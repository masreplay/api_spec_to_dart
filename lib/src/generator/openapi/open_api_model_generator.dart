import 'package:swagger_to_dart/src/config/open_api_generator_config.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

typedef OpenApiModel = MapEntry<String, OpenApiSchemas>;

class OpenApiDartModelGenerator {
  const OpenApiDartModelGenerator({
    required this.config,
  });

  final OpenApiGeneratorConfig config;

  ({String filename, String content}) generator(OpenApiModel model) {
    final filename = config.filename(model.key);
    final className = config.className(model.key);

    String body = '';

    for (final entry in (model.value.properties ?? {}).entries) {
      final propertyName = config.propertyRename(entry.key);

      body += entry.value.map(
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
          // TODO(mohammed.atheer): implement this
          return '';
        },
      );
    }

    final bodyText = body.isEmpty ? '' : '{\n$body  }';

    final content = '''
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

    return (filename: filename, content: content);
  }

  String _modelPropertyTypeGenerator({
    required String key,
    required OpenApiSchemaType value,
    required String propertyName,
  }) {
    final dartType = config.dartType(
      format: value.format,
      type: value.type,
    );

    return _generateField(
      freezedDefaultValue: value.default_,
      jsonName: key,
      propertyName: propertyName,
      propertyType: dartType,
      comment: value.description,
    );
  }

  String _modelPropertyRefGenerator({
    required String key,
    required OpenApiSchemaRef value,
    required String propertyName,
  }) {
    final dartType = config.className(value.ref!.split('/').last);

    return _generateField(
      freezedDefaultValue: value.default_,
      jsonName: key,
      propertyName: propertyName,
      propertyType: dartType,
      comment: value.description,
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
            );
          },
          ref: (value) => config.className(value.ref!.split('/').last),
          anyOf: (value) => getAnyOfType(value, config),
          oneOf: (value) => '',
        );
      }

      return isNullable ? '$text?' : text;
    }

    final dartType = getAnyOfType(value, config);

    return _generateField(
      freezedDefaultValue: value.default_,
      comment: value.description,
      jsonName: key,
      propertyName: propertyName,
      propertyType: dartType,
    );
  }

  // : '@Default(${(value.enum_?.isEmpty ?? true) ? '' : '${dartType}.'}${value.default_})';
  String _generateField({
    required String propertyName,
    required Object? freezedDefaultValue,
    required String jsonName,
    required String propertyType,
    required String? comment,
  }) {
    final buffer = StringBuffer();

    if (freezedDefaultValue != null) {
      buffer.write('@Default($freezedDefaultValue)\n');
    }

    buffer.write('@JsonKey(name: \'$jsonName\')\n');

    if (comment != null) {
      buffer.write('/// $comment\n');
    }

    buffer.write('required $propertyType $propertyName,');

    return buffer.toString();
  }
}
