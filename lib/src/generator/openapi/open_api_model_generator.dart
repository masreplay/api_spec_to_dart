import 'package:swagger_to_dart/swagger_to_dart.dart';

typedef OpenApiModel = MapEntry<String, OpenApiSchemas>;
typedef OneOfModel = ({String type, String key, String unionName});

class OpenApiModelGenerator {
  const OpenApiModelGenerator({required this.config});

  final SwaggerToDartConfig config;

  ({String filename, String content}) run(OpenApiModel model) {
    final filename = config.renameFile(model.key);
    final className = config.renameClass(model.key);

    final properties = model.value.properties ?? {};

    final enum_ = model.value.enum_ ?? [];
    if (enum_.isNotEmpty) {
      final isNumber = model.value.type == 'integer';

      final type = isNumber ? 'int' : 'String';

      String enumValues = '';

      for (int i = 0; i < enum_.length; i++) {
        final value = enum_[i];
        final description = model.value.xEnumVarnames?[i];
        final name =
            description == null
                ? 'value$value'
                : config.renameProperty(description);

        final enumName = config.renameProperty(value.toString());

        if (isNumber) {
          enumValues += '''  ${name}($value), \n''';
        } else {
          if (int.tryParse(enumName) != null) {
            enumValues += '  value${enumName}(\'$value\'),';
          } else {
            enumValues += '  ${enumName}(\'$value\'),';
          }
        }
      }

      final enumClassContent = '''
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
${config.importModelsCode}


part '${filename}.g.dart';

/// ${model.key}
${model.value.description == null ? '' : commentLine(model.value.description!)}
@JsonEnum(valueField: 'value', alwaysCreate: true)
enum $className {
$enumValues

;
const $className(this.value);

factory $className.fromJson($type value) {
  return values.firstWhere(
    (e) => e.value == value,
    orElse: () => values.first,
  );
}
final $type value;

$type toJson() => _\$${className}EnumMap[this]!;
}
''';

      return (filename: filename, content: enumClassContent);
    }

    final isUnion = properties.entries.any(
      (entry) => switch (entry.value) {
        OpenApiSchemaOneOf() => true,
        _ => false,
      },
    );

    if (isUnion) {
      // Generate Freezed Union Class
      final unionProps = <OneOfModel>[];
      final normalProps = StringBuffer();

      for (final entry in properties.entries) {
        switch (entry.value) {
          case OpenApiSchemaType value:
            final typeName = config.dartType(
              type: value.type,
              format: value.format,
              genericType: switch (value.items) {
                OpenApiSchemaRef value => config.renameRefClass(value),
                OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
                  value,
                  config,
                ),
                _ => null,
              },
              items: value.items,
              title: value.title,
            );

            normalProps.writeln(
              'required $typeName ${config.renameProperty(entry.key)},',
            );
          case OpenApiSchemaRef value:
            final typeName = config.renameRefClass(value);

            normalProps.writeln(
              'required $typeName ${config.renameProperty(entry.key)},',
            );
          case OpenApiSchemaAnyOf value:
            final typeName = convertOpenApiAnyOfToDartType(value, config);

            normalProps.writeln(
              'required $typeName ${config.renameProperty(entry.key)},',
            );
          case OpenApiSchemaOneOf value:
            value.discriminator.mapping.entries.map((e) {
              unionProps.add((
                type: config.renameClass(e.value.split('/').last),
                key: entry.key,
                unionName: e.key,
              ));
            }).toList();
        }
      }

      final freezedUnionContent = '''
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';

${config.importModelsCode}


part '${filename}.freezed.dart';
part '${filename}.g.dart';

/// ${model.key}
${model.value.description == null ? '' : commentLine(model.value.description!)}
@freezed
sealed class ${className} with _\$${className} {
  ${unionProps.any((e) => e.unionName == 'fallback') ? '' : 'const factory ${className}.fallback() = ${className}Fallback;'}
  
  ${unionProps.map((prop) => '@FreezedUnionValue("${prop.unionName}") const factory ${className}.${Recase.instance.toCamelCase(prop.unionName)}({required ${prop.type} ${prop.key},  $normalProps   }) = ${config.renameClass('${className}_${prop.unionName}')};').join('\n\n')}
  
  factory ${className}.fromJson(
    Map<String, dynamic> json,
  ) => _\$${className}FromJson(
    json,
  );
}
''';

      return (filename: filename, content: freezedUnionContent);
    } else {
      // Handle non-union classes
      String fields = '';

      for (final entry in properties.entries) {
        final propertyName = config.renameProperty(entry.key);

        fields += switch (entry.value) {
          OpenApiSchemaType value => _modelPropertyTypeGenerator(
            className: className,
            key: entry.key,
            value: value,
            propertyName: propertyName,
          ),
          OpenApiSchemaRef value => _modelPropertyRefGenerator(
            parentClassName: className,
            key: entry.key,
            value: value,
            propertyName: propertyName,
          ),
          OpenApiSchemaAnyOf value => _modelPropertyAnyOfGenerator(
            parentClassName: className,
            key: entry.key,
            value: value,
            propertyName: propertyName,
          ),
          OpenApiSchemaOneOf() => throw Exception('oneOf is not supported yet'),
        };
      }

      final bodyText = fields.isEmpty ? '' : '{\n$fields  }';

      final freezedNormalCLassContent = '''
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
${config.importModelsCode}


part '${filename}.freezed.dart';
part '${filename}.g.dart';

/// ${model.key}
${model.value.description == null ? '' : commentLine(model.value.description!)}
@freezed
abstract class ${className} with _\$${className} {
  const ${className}._();

  ${properties.entries.map((e) => 'static const String ${(config.renameProperty(e.key))}Key = \'${e.key}\';').join('\n')}

  @JsonSerializable(converters: convertors)
  const factory ${className}($bodyText) = _${className};

  factory ${className}.fromJson(
    Map<String, dynamic> json,
  ) => _\$${className}FromJson(
    json,
  );
}
''';

      return (filename: filename, content: freezedNormalCLassContent);
    }
  }

  String _modelPropertyTypeGenerator({
    required String className,
    required String key,
    required OpenApiSchemaType value,
    required String propertyName,
  }) {
    final dartType = config.dartType(
      format: value.format,
      type: value.type,
      // TODO(mohammed.atheer): handle type recursively
      genericType: switch (value.items) {
        OpenApiSchemaRef value => config.renameRefClass(value),
        OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
          value,
          config,
        ),
        _ => null,
      },

      items: value.items,
      title: value.title,
    );

    return _generateField(
      className: className,
      freezedDefaultValue:
          value.default_ == null
              ? null
              : dartType == 'String'
              ? '\'${value.default_}\''
              : value.default_,
      jsonName: key,
      propertyName: propertyName,
      propertyType: dartType,
      title: key,
      description: value.description,
    );
  }

  String _modelPropertyRefGenerator({
    required String parentClassName,
    required String key,
    required OpenApiSchemaRef value,
    required String propertyName,
  }) {
    final className = config.renameRefClass(value);

    String? defaultValueCode;

    print(
      'Ref Property: '
      'className: $className, '
      'value: ${value.default_}, '
      'int: ${value.default_ is int}',
    );

    if (value.default_ == 'null') {
      defaultValueCode = 'null';
    } else if (value.default_ != null && value.default_ is int) {
      defaultValueCode =
          '$className.value${config.renameProperty("${value.default_}")}';
    } else if (value.default_ != null && value.default_ is String) {
      defaultValueCode =
          '$className.${config.renameProperty("${value.default_}")}';
    }

    return _generateField(
      className: parentClassName,
      freezedDefaultValue: defaultValueCode,
      jsonName: key,
      propertyName: propertyName,
      propertyType: className,
      title: null,
      description: value.description,
    );
  }

  String _modelPropertyAnyOfGenerator({
    required String parentClassName,
    required String key,
    required OpenApiSchemaAnyOf value,
    required String propertyName,
  }) {
    getAnyOfType(OpenApiSchemaAnyOf value, SwaggerToDartConfig config) {
      String text = '';

      for (final schema in value.anyOf!) {
        text += switch (schema) {
          OpenApiSchemaType value => config.dartType(
            type: value.type,
            format: value.format,
            genericType: switch (value.items) {
              OpenApiSchemaRef value => config.renameRefClass(value),
              OpenApiSchemaAnyOf value => getAnyOfType(value, config),
              _ => null,
            },
            items: value.items,
            title: value.title,
          ),
          OpenApiSchemaRef value => config.renameRefClass(value),
          OpenApiSchemaAnyOf value => getAnyOfType(value, config),
          _ => '',
        };
      }

      final isNullable = value.anyOf!.any(
        (e) => e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_,
      );

      return isNullable ? '$text?' : text;
    }

    final className = getAnyOfType(value, config);

    String? defaultValueCode;
    if (value.default_ == 'null') {
      defaultValueCode = 'null';
    } else if (value.default_ != null && value.default_ is int) {
      defaultValueCode =
          '$className.value${config.renameProperty("${value.default_}")}';
    } else if (value.default_ != null && value.default_ is String) {
      defaultValueCode =
          '$className.${config.renameProperty("${value.default_}")}';
    }

    return _generateField(
      className: parentClassName,
      freezedDefaultValue: defaultValueCode,
      title: value.title,
      description: value.description,
      jsonName: key,
      propertyName: propertyName,
      propertyType: className,
    );
  }

  String _generateField({
    required String className,
    required String propertyName,
    required Object? freezedDefaultValue,
    required String jsonName,
    required String propertyType,
    String? title,
    String? description,
  }) {
    final buffer = StringBuffer();

    // Add comment if title or description is provided
    if (title != null || description != null) {
      final commentParts = [
        if (title != null) title,
        if (description != null) description,
      ];
      buffer.writeln('/// ${commentParts.join(', ')}');
    }

    // Add @Default annotation if default value is provided
    if (freezedDefaultValue != null) {
      buffer.writeln('@Default(${freezedDefaultValue})');
    }

    if (description == 'deprecated') {
      buffer.writeln('@deprecated');
      // deprecated(Use {propertyName}Key instead);
    } else if (description != null &&
        description.startsWith('deprecated(') &&
        description.endsWith(')')) {
      buffer.writeln(
        '@Deprecated("${description.substring(11, description.length - 1)}")',
      );
    }

    buffer.writeln('@JsonKey(name: $className.${propertyName}Key)');

    // Add field declaration
    if (freezedDefaultValue == null) {
      buffer.write('required ');
    }
    buffer.write('$propertyType $propertyName,');

    return buffer.toString();
  }
}

String modelToUnionFreezedClass({
  required String filename,
  required String className,
  required OpenApiModel model,
  required Map<String, OpenApiSchema> properties,
  required SwaggerToDartConfig config,
}) {
  // Generate Freezed Union Class
  final unionTypes = <String>[];

  for (final entry in properties.entries) {
    switch (entry.value) {
      case OpenApiSchemaOneOf value:
        for (var type in value.oneOf!) {
          final typeName = switch (type) {
            OpenApiSchemaType value => config.dartType(
              type: value.type,
              format: value.format,
              genericType: switch (value.items) {
                OpenApiSchemaRef value => config.renameRefClass(value),
                OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
                  value,
                  config,
                ),
                _ => null,
              },
              items: value.items,
              title: value.title,
            ),
            OpenApiSchemaRef value => config.renameRefClass(value),
            _ => '',
          };

          unionTypes.add(typeName);
        }
      case _:
    }
  }

  return '''
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
${config.importModelsCode}


part '${filename}.freezed.dart';
part '${filename}.g.dart';

/// ${model.key}
${model.value.description == null ? '' : commentLine(model.value.description!)}
@freezed
abstract class ${className} with _\$${className} {
  const factory ${className}.fallback() = ${className}Fallback;

  
  ${unionTypes.map((type) => '@FreezedUnionValue("${type}") const factory ${className}.${Recase.instance.toCamelCase(type)}(${type} value,) = ${className}$type;').join('\n\n')}
  
  factory ${className}.fromJson(
    Map<String, dynamic> json,
  ) => _\$${className}FromJson(
    json,
  );
}
''';
}
