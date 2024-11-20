import 'package:recase/recase.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class OpenApiGeneratorConfig {
  const OpenApiGeneratorConfig({
    required this.packageName,
  });

  final String packageName;

  String get importModelsText {
    return """import 'package:$packageName/src/models/models.dart';""";
  }

  String dartType(OpenApiSchemaVarType? type, String? format) {
    switch (type) {
      case OpenApiSchemaVarType.string:
        return switch (format) {
          'date-time' => 'DateTime',
          'binary' => 'File',
          'uuid' => 'String',
          'duration' => 'TimeOfDay',
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
      case OpenApiSchemaVarType.null_:
        return 'Null';
      case OpenApiSchemaVarType.$unknown || null:
        return 'dynamic';
    }
  }

  String propertyRename(String key) {
    return key.camelCase;
  }

  String enumName(String key) {
    return key.camelCase;
  }
}
