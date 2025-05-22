import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

abstract class LibraryGenerator<Params> {
  const LibraryGenerator(this.context);

  final GenerationContext context;

  Library build(Params params);
}
