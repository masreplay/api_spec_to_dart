import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/swagger_to_dart.dart';

String convertOpenApiAnyOfToDartType(
  OpenApiSchemaAnyOf value,
  DartTypeConverter typeConverter,
) {
  // Check for common pattern of nullable types (anyOf with one type and null)
  if (value.anyOf?.length == 2) {
    // Check if one of the types is null
    final hasNullType = value.anyOf!.any(
      (schema) =>
          schema is OpenApiSchemaType &&
          schema.type == OpenApiSchemaVarType.null_,
    );

    if (hasNullType) {
      // Get the non-null type
      final nonNullSchema = value.anyOf!.firstWhere(
        (schema) => !(schema is OpenApiSchemaType &&
            schema.type == OpenApiSchemaVarType.null_),
      );

      // Return the non-null type with a ? to indicate it's nullable
      return switch (nonNullSchema) {
        OpenApiSchemaType value => typeConverter.dartType(
              type: value.type,
              format: value.format,
              genericType: switch (value.items) {
                OpenApiSchemaRef value =>
                  typeConverter.namingUtils.renameRefClass(value),
                OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
                    value,
                    typeConverter,
                  ),
                _ => null,
              },
              items: value.items,
              title: value.title,
            ) +
            '?',
        OpenApiSchemaRef value =>
          typeConverter.namingUtils.renameRefClass(value) + '?',
        OpenApiSchemaAnyOf value =>
          convertOpenApiAnyOfToDartType(value, typeConverter) + '?',
        OpenApiSchemaOneOf value => generateOpenApiOneOfToDartType(
              value.title ?? 'UnionModel',
              value,
              typeConverter,
            ) +
            '?',
      };
    }
  }

  // If it's not a simple nullable type, then it's a union of multiple types
  // In Dart, we'll use dynamic since it can hold any of these types
  return 'dynamic';
}

String generateOpenApiOneOfToDartType(
  String key,
  OpenApiSchemaOneOf model,
  DartTypeConverter typeConverter,
) {
  final namingUtils = typeConverter.namingUtils;
  final importConfig = ImportConfig(baseConfig: typeConverter.baseConfig);
  final pathConfig = PathConfig(baseConfig: typeConverter.baseConfig);

  final filename = namingUtils.renameFile(key);
  final className = namingUtils.renameClass(key);

  // Generate Freezed Union Class
  final unionTypes = <(String, String)>[];
  model.discriminator.mapping.entries.map((e) {
    unionTypes.add((e.key, namingUtils.renameClass(e.value.split('/').last)));
  }).toList();

  final content = '''
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
${importConfig.importModelsCode}


part '${filename}.freezed.dart';
part '${filename}.g.dart';

/// ${key}
${model.description == null ? '' : commentLine(model.description!)}
@freezed
abstract class ${className} with _\$${className} {
  const factory ${className}.fallback() = ${className}Fallback;

  
  ${unionTypes.map((type) => '@FreezedUnionValue("${type.$1}") const factory ${className}.${Recase.instance.toCamelCase(type.$1)}(${type.$2} value,) = ${namingUtils.renameClass('${className}_${type.$1}')};').join('\n\n')}
  
  factory ${className}.fromJson(
    Map<String, dynamic> json,
  ) => _\$${className}FromJson(
    json,
  );
}
''';

  if (!Directory(pathConfig.modelsOutputDirectory).existsSync()) {
    Directory(pathConfig.modelsOutputDirectory).createSync(recursive: true);
  }

  final filepath = path.join(
    pathConfig.modelsOutputDirectory,
    '${namingUtils.renameFile(className)}.dart',
  );

  final file = File(filepath);

  file.writeAsString(content);

  print('Generated: $filepath');

  return className;
}
