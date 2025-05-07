import 'package:swagger_to_dart/src/config/code_generation_context.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class SwaggerToDartCodeGenerator {
  SwaggerToDartCodeGenerator(this.context);

  final CodeGenerationContext context;
  final FileHandler _fileHandler = const FileHandler();

  Future<void> write() async {
    OpenApiModelGenerator(context).generate();

    for (final model in context.models) {
      await _fileHandler.writeLibrary(model);
    }
  }
}
