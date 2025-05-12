import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/src/config/code_generation_context.dart';

class SwaggerToDartCodeGenerator {
  SwaggerToDartCodeGenerator(this.context);

  final CodeGenerationContext context;

  Future<void> write() async {
    final emitter = DartEmitter.scoped();
    final formatter = DartFormatter(
      languageVersion: DartFormatter.latestLanguageVersion,
    );

    context.modelGenerator.generate();

    final dir = Directory(context.swaggerToDart.outputDirectory);
    print('Output directory: ${dir.path}');

    // Create directory if it doesn't exist, or clean it if it does
    if (dir.existsSync()) {
      await dir.delete(recursive: true);
    }
    await dir.create(recursive: true);

    print('Generating ${context.models.length} models...');

    // Process models in parallel for better performance
    await Future.wait(
      context.models.map((model) async {
        final name = model.name;
        if (name == null) {
          print('Warning: Skipping model with null name');
          return;
        }

        try {
          print('Generating model $name...');
          final file = File(path.join(dir.path, '${name}.dart'));

          await file.writeAsString(
            formatter.format('${model.accept(emitter)}'),
            flush: true,
          );
        } catch (e, stackTrace) {
          print('Error generating model $name: $e');
          print('Stack trace: $stackTrace');
        }
      }),
    );

    final library = Library((b) => b
      ..directives.addAll([
        for (final model in context.models)
          if (model.name case final name?) Directive.export('$name.dart'),
      ]));

    final file = File(path.join(dir.path, 'models.dart'));
    await file.writeAsString(
      formatter.format('${library.accept(emitter)}'),
      flush: true,
    );

    print('Code generation completed successfully');
  }
}
