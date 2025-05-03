import 'package:code_builder/code_builder.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:swagger_to_dart/src/pubspec.dart';
import 'package:swagger_to_dart/src/utils/naming_utils.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class DartTypeConverter {
  const DartTypeConverter({
    required this.isFlutterProject,
  });

  final bool isFlutterProject;

  String dartType({
    required OpenApiSchemaVarType? type,
    required String? format,
    required String? genericType,
    required OpenApiSchema? items,
    required String? title,
    String? parentTitle,
  }) {
    switch (type) {
      case OpenApiSchemaVarType.string:
        return switch (format) {
          'date-time' => 'DateTime',
          'date' => 'DateTime',
          'color-hex' => 'Color',
          'binary' => 'MultipartFile',
          'uuid' => 'String',
          'time' || 'duration' => isFlutterProject ? 'TimeOfDay' : 'String',
          'uri' => 'Uri',
          _ => 'String',
        };
      case OpenApiSchemaVarType.number:
        return 'double';
      case OpenApiSchemaVarType.integer:
        return 'int';
      case OpenApiSchemaVarType.boolean:
        return 'bool';
      case OpenApiSchemaVarType.array:
        final className = switch (items) {
          OpenApiSchemaType value => dartType(
              type: value.type,
              format: value.format,
              genericType: switch (value.items) {
                OpenApiSchemaRef value =>
                  NamingUtils.instance.renameRefClass(value),
                OpenApiSchemaAnyOf value =>
                  convertOpenApiAnyOfToDartType(value, this),
                _ => null,
              },
              items: value.items,
              title: value.title,
              parentTitle: parentTitle),
          OpenApiSchemaRef value => NamingUtils.instance.renameRefClass(value),
          OpenApiSchemaAnyOf value =>
            convertOpenApiAnyOfToDartType(value, this),
          OpenApiSchemaOneOf value => handleOpenApiOneOfToDartType(
              '${parentTitle}${title}UnionResponse',
              value,
              this,
            ),
          null => null,
        };

        if (className == null) return 'List<dynamic>';

        return 'List<$className>';
      case OpenApiSchemaVarType.object:
        if (genericType == null) return 'Map<String, dynamic>';

        return 'Map<String, $genericType>';
      case OpenApiSchemaVarType.null_ || OpenApiSchemaVarType.$unknown || null:
        return 'dynamic';
    }
  }
}

class SwaggerToDartConfig {
  const SwaggerToDartConfig({
    required this.pubspec,
    required this.swaggerToDart,
    required this.dartTypeConverter,
    required this.openApi,
  });

  final OpenApi openApi;
  final Pubspec pubspec;
  final SwaggerToDart swaggerToDart;
  final DartTypeConverter dartTypeConverter;

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
