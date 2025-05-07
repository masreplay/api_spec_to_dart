import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/config/code_generation_context.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class CodeGenerator {
  CodeGenerator(this.context);

  final CodeGenerationContext context;

  final List<Library> _models = <Library>[];

  void addToModels(Library library) {
    _models.add(library);
  }

  Future<void> generate() async {}
}

class SwaggerToDartCodeGenerator {
  SwaggerToDartCodeGenerator(CodeGenerationContext context)
      : _generator = CodeGenerator(context);

  final CodeGenerator _generator;
  final FileHandler _fileHandler = const FileHandler();

  Future<void> _generateModels() async {
    final generator = OpenApiModelGenerator(_generator);

    generator.generate();
  }

  Future<void> write() async {
    await _generateModels();

    for (final model in _generator._models) {
      await _fileHandler.writeLibrary(model);
    }
  }
}
