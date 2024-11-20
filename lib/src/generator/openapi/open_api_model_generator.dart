import 'package:swagger_to_dart/src/config/open_api_generator_config.dart';
import 'package:swagger_to_dart/src/utils/recase.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

typedef OpenApiModel = MapEntry<String, OpenApiSchemas>;

class OpenApiDartModelGenerator {
  const OpenApiDartModelGenerator({
    required this.config,
  });

  final OpenApiGeneratorConfig config;

  String className(
    OpenApiModel model,
  ) {
    return Recase.instance.pascalCase(model.key);
  }

  String filename(OpenApiModel model) {
    return Recase.instance.snakeCase(model.key);
  }

  ({String filename, String content}) generator(OpenApiModel model) {
    final filename = this.filename(model);
    final modelName = className(model);

    String body = '';

    for (final entry in (model.value.properties ?? {}).entries) {
      final propertyName = config.propertyRename(entry.key);

      final isRequired = (model.value.required_?.contains(entry.key) ?? false)
          ? 'required'
          : '';

      body += entry.value.map(
        type: (value) => _modelPropertyTypeGenerator(
          key: entry.key,
          isRequired: isRequired,
          value: value,
          propertyName: propertyName,
        ),
        ref: (value) => _modelPropertyRefGenerator(
          key: entry.key,
          isRequired: isRequired,
          value: value,
          propertyName: propertyName,
        ),
        anyOf: (value) => _modelPropertyAnyOfGenerator(
          key: entry.key,
          isRequired: isRequired,
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

${config.importModelsText}

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
    required String isRequired,
    required OpenApiSchemaType value,
    required String propertyName,
  }) {
    final dartType = config.dartType(value.type, value.format);

    final defaultValue = value.default_ == null
        ? ''
        : '@Default(${(value.enum_?.isEmpty ?? true) ? '' : '${dartType}.'}${value.default_})';

    return '''
  $defaultValue
  @JsonKey(name: \'${key}\') 
  $isRequired $dartType $propertyName,
''';
  }

  String _modelPropertyRefGenerator({
    required String key,
    required String isRequired,
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
  $isRequired $dartType $propertyName,
''';
  }

  String _modelPropertyAnyOfGenerator({
    required String key,
    required String isRequired,
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
              return config.dartType(value.type, value.format);
            }
          },
          ref: (value) => value.ref!.split('/').last,
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
  $isRequired $dartType $propertyName,
''';
  }
}
