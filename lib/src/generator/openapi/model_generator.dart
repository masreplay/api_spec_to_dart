// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:recase/recase.dart';
import 'package:swagger_to_dart/src/config/open_api_generator_config.dart';
import 'package:swagger_to_dart/src/generator/generator.dart';
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

  ({String filename, String content}) run({
    required OpenApiModel model,
  }) {
    final filename = this.filename(model);
    final modelName = className(model);

    final content = FreezedClassGenerator().normalClassTemplate(
      fileName: filename,
      modelName: modelName,
      imports: [config.importModelsText],
      fields: [],
    );

    return (filename: filename, content: content);
  }
}
