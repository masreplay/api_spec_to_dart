import 'package:swagger_to_dart/swagger_to_dart.dart';

/// Interface for model generation
abstract class ModelGeneratorInterface {
  /// Generates a model from an OpenAPI schema entry
  ({String filename, String content}) run(
    MapEntry<String, OpenApiSchemas> entry,
  );
}
