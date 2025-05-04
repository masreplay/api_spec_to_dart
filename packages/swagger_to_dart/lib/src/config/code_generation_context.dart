import 'package:code_builder/code_builder.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:swagger_to_dart/src/config/open_api_to_dart_type_converter.dart';
import 'package:swagger_to_dart/src/config/swagger_to_dart_yaml.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class CodeGenerationContext {
  const CodeGenerationContext({
    required this.pubspec,
    required this.swaggerToDart,
    required this.dartTypeConverter,
    required this.openApi,
  });

  final OpenApi openApi;
  final Pubspec pubspec;
  final SwaggerToDart swaggerToDart;
  final OpenApiToDartTypeConverter dartTypeConverter;

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
