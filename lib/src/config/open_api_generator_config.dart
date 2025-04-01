// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:swagger_to_dart/pubspec.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class SwaggerToDartConfig {
  const SwaggerToDartConfig({
    required this.swaggerToDart,
    required this.pubspec,
  });

  final SwaggerToDart swaggerToDart;

  final Pubspec pubspec;

  String get modelsOutputDirectory {
    return path.join(swaggerToDart.outputDirectory, 'models');
  }

  String get clientsOutputDirectory {
    return path.join(swaggerToDart.outputDirectory, 'clients');
  }

  String get importModelsCode {
    return '''import 'package:${pubspec.name}/src/gen/models/models.dart';
    ${pubspec.isFlutterProject ? "import 'package:flutter/material.dart';" : ''} 
    ''';
  }

  String get importClientsCode {
    return '''import 'package:${pubspec.name}/src/gen/clients/clients.dart';''';
  }

  String dartType({
    required OpenApiSchemaVarType? type,
    required String? format,
    required String? genericType,
    required OpenApiSchema? items,
    required String? title,
  }) {
    switch (type) {
      case OpenApiSchemaVarType.string:
        return switch (format) {
          'date-time' => 'DateTime',
          'date' => 'DateTime',
          'color-hex' => 'Color',
          'binary' => 'MultipartFile',
          'uuid' => 'String',
          'duration' => pubspec.isFlutterProject ? 'TimeOfDay' : 'String',
          'uri' => 'Uri',
          'time' => 'TimeOfDay',
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
              OpenApiSchemaRef value => renameRefClass(value),
              OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
                value,
                this,
              ),
              _ => null,
            },
            items: value.items,
            title: value.title,
          ),
          OpenApiSchemaRef value => renameRefClass(value),
          OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
            value,
            this,
          ),
          OpenApiSchemaOneOf value => generateOpenApiOneOfToDartType(
            '${value.title ?? title}UnionResponse',
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

  String renameProperty(String key) {
    return _renameProtect(Recase.instance.toCamelCase(key));
  }

  String renameMethod(String key) {
    return _renameProtect(Recase.instance.toCamelCase(key));
  }

  String renameEnum(String key) {
    return Recase.instance.toPascalCase(key);
  }

  String renameRefClass(OpenApiSchemaRef value) {
    return renameClass(value.ref!.split('/').last);
  }

  String renameClass(String key) {
    final name = Recase.instance.toPascalCase(key);

    if (name.endsWith('NoneType')) {
      // remove then
      return name.substring(0, name.length - 8);
    }

    return name;
  }

  String renameFile(String key) {
    final name = Recase.instance.toSnakeCase(key);

    if (name.endsWith('none_type')) {
      // remove then
      return name.substring(0, name.length - 9);
    }

    return name;
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'swagger_to_dart': swaggerToDart.toJson(),
      'pubspec': pubspec.toString(),
    };
  }
}

/// Handles Dart keywords by appending an underscore if the identifier
/// conflicts with a reserved keyword
String _renameProtect(String name) {
  if (keywords.contains(name)) {
    return '${name}_';
  }
  return name;
}

/// Set of reserved Dart keywords that can't be used as identifiers
const keywords = {
  'abstract',
  'as',
  'assert',
  'async',
  'await',
  'base',
  'break',
  'case',
  'catch',
  'class',
  'const',
  'continue',
  'covariant',
  'default',
  'deferred',
  'do',
  'dynamic',
  'else',
  'enum',
  'export',
  'extends',
  'extension',
  'external',
  'factory',
  'false',
  'var',
  'final',
  'finally',
  'for',
  'Function',
  'get',
  'hide',
  'if',
  'implements',
  'import',
  'in',
  'interface',
  'is',
  'late',
  'library',
  'mixin',
  'new',
  'null',
  'of',
  'on',
  'operator',
  'part',
  'required',
  'rethrow',
  'return',
  'sealed',
  'set',
  'show',
  'static',
  'super',
  'switch',
  'sync',
  'this',
  'throw',
  'true',
  'try',
  'type',
  'typedef',
  'void',
  'when',
  'with',
  'while',
  'yield',
};