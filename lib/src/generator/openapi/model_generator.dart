// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:recase/recase.dart';
import 'package:swagger_to_dart/src/config/open_api_generator_config.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

typedef OpenApiModel = MapEntry<String, OpenApiSchemas>;

class OpenApiDartModelGenerator {
  final OpenApiGeneratorConfig config;

  const OpenApiDartModelGenerator({
    required this.config,
  });

  String className(
    OpenApiModel model,
  ) {
    return model.key.pascalCase;
  }

  String filename(OpenApiModel model) {
    return model.key.snakeCase;
  }

  ({String filename, String content}) run(OpenApiModel model) {
    final filename = this.filename(model);
    final modelName = className(model);

    String body = '';

    for (final entry in (model.value.properties ?? {}).entries) {
      final propertyName = config.propertyRename(entry.key);

      entry.value.map(
        type: (value) {
          final dartType = config.dartType(value.type);
          body += //
              '''
  @JsonKey(name: \'${entry.key}\') 
  required $dartType $propertyName,
''';
        },
        ref: (value) {
          // TODO(mohammed.atheer): implement this
        },
        anyOf: (value) {
          // TODO(mohammed.atheer): implement this
        },
        oneOf: (value) {
          // TODO(mohammed.atheer): implement this
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
}
