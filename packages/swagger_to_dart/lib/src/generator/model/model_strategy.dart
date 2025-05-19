import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/config/generation_context.dart';
import 'package:swagger_to_dart/src/schema/openapi/openapi.dart';

///
/// 
///
abstract class ModelStrategy {
  const ModelStrategy(this.context);

  final GenerationContext context;

  Library generate(MapEntry<String, OpenApiSchemas> model);
}
