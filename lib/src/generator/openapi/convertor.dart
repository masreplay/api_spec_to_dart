import 'dart:io';
import 'package:path/path.dart' as path;

import 'package:swagger_to_dart/swagger_to_dart.dart';

String convertOpenApiAnyOfToDartType(
  OpenApiSchemaAnyOf value,
  SwaggerToDartConfig config,
) {
  String className = '';
  final isNullable = value.anyOf!.any(
    (e) => e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_,
  );

  for (final schema in value.anyOf!) {
    className += switch (schema) {
      OpenApiSchemaType value => config.dartType(
        type: value.type,
        format: value.format,
        genericType: switch (value.items) {
          OpenApiSchemaRef value => config.renameRefClass(value),
          OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
            value,
            config,
          ),
          OpenApiSchemaOneOf value => generateOpenApiOneOfToDartType(
            className,
            value,
            config,
          ),

          _ => null,
        },
        items: value.items,
        title: value.title,
      ),
      OpenApiSchemaRef value => config.renameRefClass(value),
      OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(value, config),
      OpenApiSchemaOneOf value => generateOpenApiOneOfToDartType(
        className,
        value,
        config,
      ),
    };
  }

  return isNullable ? '$className?' : 'dynamic';
}

String generateOpenApiOneOfToDartType(
  String key,
  OpenApiSchemaOneOf model,
  SwaggerToDartConfig config,
) {
  final filename = config.renameFile(key);
  final className = config.renameClass(key);

  // Generate Freezed Union Class
  final unionTypes = <(String, String)>[];
  model.discriminator.mapping.entries.map((e) {
    unionTypes.add((e.key, config.renameClass(e.value.split('/').last)));
  }).toList();

  final content = '''
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
${config.importModelsCode}


part '${filename}.freezed.dart';
part '${filename}.g.dart';

/// ${key}
${model.description == null ? '' : commentLine(model.description!)}
@freezed
abstract class ${className} with _\$${className} {
  const factory ${className}.fallback() = ${className}Fallback;

  
  ${unionTypes.map((type) => '@FreezedUnionValue("${type.$1}") const factory ${className}.${Recase.instance.toCamelCase(type.$1)}(${type.$2} value,) = ${config.renameClass('${className}_${type.$1}')};').join('\n\n')}
  
  factory ${className}.fromJson(
    Map<String, dynamic> json,
  ) => _\$${className}FromJson(
    json,
  );
}
''';

  if (!Directory(config.modelsOutputDirectory).existsSync()) {
    Directory(config.modelsOutputDirectory).createSync(recursive: true);
  }

  final filepath = path.join(
    config.modelsOutputDirectory,
    '${config.renameFile(className)}.dart',
  );

  final file = File(filepath);

  file.writeAsString(content);

  print('Generated: $filepath');

  return className;
}
