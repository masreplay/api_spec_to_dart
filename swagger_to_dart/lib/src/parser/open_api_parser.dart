import 'dart:convert';
import 'dart:io';
import 'package:collection/collection.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

/// Parses OpenAPI/Swagger files into Dart models
class OpenApiParser {
  /// Reads and parses an OpenAPI file from the given path
  OpenApi parseFile(String filePath) {
    final file = File(filePath);
    final json = file.readAsStringSync();
    final map = jsonDecode(json);
    return OpenApi.fromJson(map);
  }

  /// Extracts paths grouped by tags from OpenAPI paths
  Map<String, List<String>> extractPathsByTags(OpenApiPaths paths) {
    final List<({String tag, String path})> tagsPaths = [];

    for (final entry in paths.entries) {
      final tag = [
        entry.value.post,
        entry.value.get,
        entry.value.put,
        entry.value.delete,
        entry.value.patch,
      ].where((element) => element != null).first;

      if (tag != null) {
        tagsPaths.add((tag: tag.tags.first, path: entry.key));
      }
    }

    return groupBy(
      tagsPaths,
      (element) => element.tag,
    ).map((key, value) => MapEntry(key, value.map((e) => e.path).toList()));
  }
}
