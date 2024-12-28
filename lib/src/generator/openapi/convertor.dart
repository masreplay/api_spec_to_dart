import 'dart:io';
import 'package:path/path.dart' as path;

import 'package:swagger_to_dart/swagger_to_dart.dart';

String convertOpenApiAnyOfToDartType(
  OpenApiSchemaAnyOf value,
  SwaggerToDartConfig config,
) {
  String className = '';
  bool isNullable = false;

  for (final schema in value.anyOf!) {
    className += schema.map(
      type: (value) {
        if (value.type == OpenApiSchemaVarType.null_) {
          isNullable = true;
          return '';
        }

        return config.dartType(
          type: value.type,
          format: value.format,
          genericType: value.items?.mapOrNull(
            ref: (value) => config.renameRefClass(value),
            anyOf: (value) => convertOpenApiAnyOfToDartType(value, config),
            oneOf: (value) =>
                generateOpenApiOneOfToDartType(className, value, config),
          ),
          items: value.items,
        );
      },
      ref: (value) => config.renameRefClass(value),
      anyOf: (value) => convertOpenApiAnyOfToDartType(value, config),
      oneOf: (value) => '',
    );
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
  model.discriminator.mapping.entries.map(
    (e) {
      unionTypes.add((e.key, config.renameClass(e.value.split('/').last)));
    },
  ).toList();

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
class ${className} with _\$${className} {
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
