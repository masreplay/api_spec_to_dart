import 'package:swagger_to_dart/swagger_to_dart.dart';

class Generator {
  Future<void> run(OpenApi openApi) async {}
}

typedef Model = MapEntry<String, OpenApiSchemas>;

class ModelGenerator {
  Future<String> run(Model model) async {
    final className = model.key.toUpperCase();
    return """""";
  }
}
