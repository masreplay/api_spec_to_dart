import 'package:swagger_to_dart/src/config/open_api_generator_config.dart';
import 'package:swagger_to_dart/src/utils/recase.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

typedef OpenApiModel = MapEntry<String, OpenApiSchemas>;

class OpenApiDartModelGenerator {
  const OpenApiDartModelGenerator({
    required this.config,
  });

  final OpenApiGeneratorConfig config;

  ({String filename, String content}) generator(OpenApiModel model) {
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

        final enumName = config.renameProperty(value.toString());

        if (isNumber) {
          enumValues += '  value$i($value),';
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

import '../../convertors.dart';
${config.relativeImportModelsCode}

part '${filename}.g.dart';

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum $className {
$enumValues

;
const $className(this.value);

final $type value;

$type toJson() => _\$${className}EnumMap[this]!;
factory $className.fromJson($type value) {
  return values.firstWhere(
    (e) => e.value == value,
    orElse: () => values.first,
  );
}
}
''';

      return (filename: filename, content: enumClassContent);
    }

    final isUnion = properties.entries.any(
      (entry) => entry.value.maybeMap(
        oneOf: (value) => true,
        orElse: () => false,
      ),
    );

    if (isUnion) {
      // Generate Freezed Union Class
      final unionTypes = <String>[];

      for (final entry in properties.entries) {
        entry.value.maybeMap(
          oneOf: (value) {
            for (var type in value.oneOf!) {
              final typeName = type.maybeMap(
                ref: (value) => config.renameClass(value.ref!.split('/').last),
                type: (value) => config.dartType(
                  type: value.type,
                  format: value.format,
                  genericType: value.items?.mapOrNull(
                    ref: (value) =>
                        config.renameClass(value.ref!.split('/').last),
                  ),
                ),
                orElse: () => '',
              );

              unionTypes.add(typeName);
            }
          },
          orElse: () {},
        );
      }

      final freezedUnionContent = '''
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
${config.relativeImportModelsCode}

part '${filename}.freezed.dart';
part '${filename}.g.dart';

@freezed
class ${className} with _\$${className} {
  const factory ${className}.fallback() = ${className}Fallback;

  
  ${unionTypes.map((type) => '@FreezedUnionValue("${type}") const factory ${className}.${Recase.instance.toCamelCase(type)}(${type} value,) = ${className}$type;').join('\n\n')}
  
  factory ${className}.fromJson(Map<String, dynamic> json) => _\$${className}FromJson(json);
}
''';

      return (filename: filename, content: freezedUnionContent);
    } else {
      // Handle non-union classes
      String fields = '';

      for (final entry in properties.entries) {
        final propertyName = config.renameProperty(entry.key);

        fields += entry.value.map(
          type: (value) => _modelPropertyTypeGenerator(
            key: entry.key,
            value: value,
            propertyName: propertyName,
          ),
          ref: (value) => _modelPropertyRefGenerator(
            key: entry.key,
            value: value,
            propertyName: propertyName,
          ),
          anyOf: (value) => _modelPropertyAnyOfGenerator(
            key: entry.key,
            value: value,
            propertyName: propertyName,
          ),
          oneOf: (value) {
            throw Exception('oneOf is not supported');
          },
        );
      }

      final bodyText = fields.isEmpty ? '' : '{\n$fields  }';

      final freezedNormalCLassContent = '''
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
${config.relativeImportModelsCode}

part '${filename}.freezed.dart';
part '${filename}.g.dart';

@freezed
class ${className} with _\$${className} {
  const ${className}._();

  @JsonSerializable(converters: convertors)
  const factory ${className}($bodyText) = _${className};

  factory ${className}.fromJson(Map<String, dynamic> json) => _\$${className}FromJson(json);
}
''';

      return (filename: filename, content: freezedNormalCLassContent);
    }
  }

  String _modelPropertyTypeGenerator({
    required String key,
    required OpenApiSchemaType value,
    required String propertyName,
  }) {
    final dartType = config.dartType(
      format: value.format,
      type: value.type,
      genericType: value.items?.mapOrNull(
        // TODO(mohammed.atheer): handle type recursively
        ref: (value) => config.renameClass(value.ref!.split('/').last),
      ),
    );

    return _generateField(
      freezedDefaultValue: value.default_ == null
          ? null
          : dartType == 'String'
              ? '\'${value.default_}\''
              : value.default_,
      jsonName: key,
      propertyName: propertyName,
      propertyType: dartType,
      title: value.title,
      description: value.description,
    );
  }

  String _modelPropertyRefGenerator({
    required String key,
    required OpenApiSchemaRef value,
    required String propertyName,
  }) {
    final className = config.renameClass(value.ref!.split('/').last);

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
      freezedDefaultValue: defaultValueCode,
      jsonName: key,
      propertyName: propertyName,
      propertyType: className,
      title: null,
      description: value.description,
    );
  }

  String _modelPropertyAnyOfGenerator({
    required String key,
    required OpenApiSchemaAnyOf value,
    required String propertyName,
  }) {
    getAnyOfType(
      OpenApiSchemaAnyOf value,
      OpenApiGeneratorConfig config,
    ) {
      String text = '';
      bool isNullable = false;

      for (final schema in value.anyOf!) {
        text += schema.map(
          type: (value) {
            if (value.type == OpenApiSchemaVarType.null_) {
              isNullable = true;
              return '';
            }

            return config.dartType(
              type: value.type,
              format: value.format,
              genericType: value.items?.mapOrNull(
                ref: (value) => config.renameClass(value.ref!.split('/').last),
              ),
            );
          },
          ref: (value) => config.renameClass(value.ref!.split('/').last),
          anyOf: (value) => getAnyOfType(value, config),
          oneOf: (value) => '',
        );
      }

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
      freezedDefaultValue: defaultValueCode,
      title: value.title,
      description: value.description,
      jsonName: key,
      propertyName: propertyName,
      propertyType: className,
    );
  }

  String _generateField({
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

    // Add @JsonKey annotation
    buffer.writeln('@JsonKey(name: \'$jsonName\')');

    // Add field declaration
    buffer.write('required $propertyType $propertyName,');

    return buffer.toString();
  }
}
