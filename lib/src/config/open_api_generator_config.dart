// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/swagger_to_dart.dart';

class SwaggerToDartConfig {
  const SwaggerToDartConfig({
    required this.swaggerToDart,
    required this.pubspec,
  });

  final SwaggerToDartYaml swaggerToDart;

  final PubspecYaml pubspec;

  String get modelsOutputDirectory {
    return path.join(swaggerToDart.outputDirectory, 'models');
  }

  String get clientsOutputDirectory {
    return path.join(swaggerToDart.outputDirectory, 'clients');
  }

  String get importModelsCode {
    return '''import 'package:${pubspec.name}/src/gen/models/models.dart';
    ${pubspec.isFlutter ? "import 'package:flutter/material.dart';" : ''} 
    ''';
  }

  String get importClientsCode {
    return '''import 'package:${pubspec.name}/src/gen/clients/clients.dart';''';
  }

  String dartType({
    required OpenApiSchemaVarType? type,
    required String? format,
    required String? genericType,
  }) {
    switch (type) {
      case OpenApiSchemaVarType.string:
        return switch (format) {
          'date-time' => 'DateTime',
          'color-hex' => 'Color',
          'binary' => 'File',
          'uuid' => 'String',
          'duration' => pubspec.isFlutter ? 'TimeOfDay' : 'String',
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
        if (genericType == null) return 'List<dynamic>';

        return 'List<$genericType>';
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
      'pubspec': pubspec.toJson(),
    };
  }
}

String _renameProtect(String name) {
  // TODO(mohammed.atheer): handle dart keywords
  return name;
}
