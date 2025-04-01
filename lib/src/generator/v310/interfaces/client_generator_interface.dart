import 'package:swagger_to_dart/swagger_to_dart.dart';

/// Interface for client generation
abstract class ClientGeneratorInterface {
  /// Generates a client from OpenAPI paths
  ({String filename, String content}) generator({
    required OpenApiPaths path,
    required String clientName,
    required List<String> tagPaths,
  });
}
