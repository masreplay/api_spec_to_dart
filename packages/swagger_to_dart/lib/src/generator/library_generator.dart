import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

abstract class LibraryGenerator {
  const LibraryGenerator(this.context);

  final GenerationContext context;
}
