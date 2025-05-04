import 'package:collection/collection.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

/// Parses OpenAPI/Swagger files into Dart models
class OpenApiParser {
  Map<String, List<String>> groupPathsByTag(OpenApiPaths paths) {
    final List<({String tag, String path})> tagsPaths = [];

    for (final entry in paths.entries) {
      final tag = [
        entry.value.get,
        entry.value.post,
        entry.value.put,
        entry.value.delete,
        entry.value.options,
        entry.value.head,
        entry.value.patch,
        entry.value.trace,
      ].where((element) => element != null).firstOrNull;

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
