import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/src/utils/recase.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class OpenApiGeneratorConfig {
  const OpenApiGeneratorConfig({
    required this.packageName,
    required this.input,
    required this.output,
    required this.isFlutter,
  });

  final String packageName;

  final bool isFlutter;

  final String input;

  final String output;

  String get modelsOutputDirectory {
    return path.join(output, 'models');
  }

  String get relativeImportModelsCode {
    return """import './models.dart';""";
  }

  String dartType({
    required OpenApiSchemaVarType? type,
    required String? format,
  }) {
    switch (type) {
      case OpenApiSchemaVarType.string:
        return switch (format) {
          'date-time' => 'DateTime',
          'binary' => 'File',
          'uuid' => 'String',
          'duration' => isFlutter ? 'TimeOfDay' : 'DateTime',
          'uri' => 'Uri',
          _ => 'String',
        };
      case OpenApiSchemaVarType.number:
        return 'num';
      case OpenApiSchemaVarType.integer:
        return 'int';
      case OpenApiSchemaVarType.boolean:
        return 'bool';
      case OpenApiSchemaVarType.array:
        return 'List';
      case OpenApiSchemaVarType.object:
        return 'Map';
      case OpenApiSchemaVarType.null_ || OpenApiSchemaVarType.$unknown || null:
        return 'dynamic';
    }
  }

  String propertyRename(String key) {
    return Recase.instance.toCamelCase(key);
  }

  String enumName(String key) {
    return Recase.instance.toPascalCase(key);
  }

  String className(String key) {
    return Recase.instance.toPascalCase(key);
  }

  String filename(String key) {
    return Recase.instance.toSnakeCase(key);
  }
}
