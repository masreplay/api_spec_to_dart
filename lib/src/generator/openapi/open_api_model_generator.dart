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
    final modelName = config.className(model.key);

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
import 'package:freezed_annotation/freezed_annotation.dart';

${config.relativeImportModelsCode}

part '${filename}.freezed.dart';
part '${filename}.g.dart';

@freezed
class ${modelName} with _\$${modelName} {
  const factory ${modelName}($bodyText) = _${modelName};

  factory ${modelName}.fromJson(Map<String, dynamic> json) => _\$${modelName}FromJson(json);
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

    final defaultValue = value.default_ == null
        ? ''
        : '@Default(${(value.enum_?.isEmpty ?? true) ? '' : '${dartType}.'}${value.default_})';

    return '''
  $defaultValue
  @JsonKey(name: \'${key}\') 
  required $dartType $propertyName,
''';
  }

  String _modelPropertyRefGenerator({
    required String key,
    required OpenApiSchemaRef value,
    required String propertyName,
  }) {
    final dartType = value.ref!.split('/').last;

    // TODO(mohammed.atheer): Check if the value is enum
    final defaultValue =
        value.default_ == null ? '' : '@Default(${value.default_})';

    return value.ref == null
        ? ''
        : '''
  $defaultValue 
  @JsonKey(name: \'${key}\')
  required $dartType $propertyName,
''';
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
            } else {
              return config.dartType(
                type: value.type,
                format: value.format,
              );
            }
          },
          ref: (value) => config.className(value.ref!.split('/').last),
          anyOf: (value) => getAnyOfType(value, config),
          //TODO(shahadKadhim): implement this
          oneOf: (value) => '',
        );
      }

      return isNullable ? '$text?' : text;
    }

    final dartType = getAnyOfType(value, config);

    //TODO Check if the value is enum
    final defaultValue =
        value.default_ == null ? '' : '@Default(${value.default_})';

    return '''
  $defaultValue
  @JsonKey(name: \'${key}\')
  required $dartType $propertyName,
''';
  }
}
