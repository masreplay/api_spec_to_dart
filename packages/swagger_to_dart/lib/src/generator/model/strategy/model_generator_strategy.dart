import 'package:code_builder/src/specs/library.dart';
import 'package:swagger_to_dart/src/config/generation_context.dart';

///
///
///
abstract class ModelGeneratorStrategy<Params> {
  const ModelGeneratorStrategy(this.context);

  final GenerationContext context;

  Library build(Params params);
}
