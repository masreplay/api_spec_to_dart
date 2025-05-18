import 'package:code_builder/code_builder.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:swagger_to_dart/src/config/swagger_to_dart_yaml.dart';
import 'package:swagger_to_dart/src/generator/model/model_generator.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class GenerationContext {
  GenerationContext({
    required this.pubspec,
    required this.swaggerToDart,
    required this.openApi,
  });

  final OpenApi openApi;
  final Pubspec pubspec;
  final SwaggerToDart swaggerToDart;

  bool get isFlutterProject {
    return pubspec.dependencies.containsKey('flutter');
  }

  ModelGenerator get modelGenerator => ModelGenerator(this);
  final _models = <Library>[];
  List<Library> get models => _models;

  void addModel(Library library) {
    _models.add(library);
  }
}
