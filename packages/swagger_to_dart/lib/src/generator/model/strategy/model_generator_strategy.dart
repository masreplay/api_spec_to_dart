import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/config/generation_context.dart';
import 'package:swagger_to_dart/src/schema/openapi/openapi.dart';

///
///
///
abstract class ModelGeneratorStrategy {
  const ModelGeneratorStrategy(this.context);

  final GenerationContext context;

  Library build(MapEntry<String, OpenApiSchemas> model);
}
