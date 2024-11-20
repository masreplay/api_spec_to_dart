class OpenApiGeneratorConfig {
  const OpenApiGeneratorConfig({
    required this.packageName,
  });

  final String packageName;

  String get importModelsText {
    return """import 'package:$packageName/src/models/models.dart';""";
  }
}
