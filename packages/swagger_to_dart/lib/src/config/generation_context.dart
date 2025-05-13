import 'package:code_builder/code_builder.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:swagger_to_dart/src/config/open_api_to_dart_type_converter.dart';
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

  ModelGenerator get modelGenerator => ModelGenerator(this);
  final List<Library> _models = <Library>[];
  List<Library> get models => _models;

  void addModel(Library library) {
    _models.add(library);
  }

  final List<Library> _enums = <Library>[];
  List<Library> get enums => _enums;

  void addEnum(Library library) {
    _enums.add(library);
  }

  OpenApiToDartTypeConverter get dartTypeConverter {
    return OpenApiToDartTypeConverter(this);
  }

  bool get isFlutterProject {
    return pubspec.dependencies.containsKey('flutter');
  }

  String get _outputDirectory {
    return swaggerToDart.outputDirectory.replaceFirst('lib', '');
  }

  Directive get importModelsDirective {
    return Directive.import(
      'package:${pubspec.name + _outputDirectory}/models/models.dart',
    );
  }

  Directive get importClientsCode {
    return Directive.import(
      'package:${pubspec.name + _outputDirectory}/clients/clients.dart',
    );
  }
}
