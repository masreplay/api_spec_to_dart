import 'package:swagger_to_dart/src/config/open_api_generator_config.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:collection/collection.dart';

typedef OpenApiModel = MapEntry<String, OpenApiSchemas>;

class OpenApiDartClientGenerator {
  const OpenApiDartClientGenerator({
    required this.config,
  });

  final OpenApiGeneratorConfig config;

  ({String filename, String content}) generator(
      OpenApiPaths model, List<String> functionsPaths) {
    final List<({String tag, String path})> tagsPaths = [];

    for (final entry in model.entries) {
      final tag = [
        entry.value.post,
        entry.value.get,
        entry.value.put,
        entry.value.delete,
        entry.value.patch,
      ].where((element) => element != null).first;

      final path = entry.key;

      tagsPaths.add((tag: tag!.tags.first, path: path));
    }

    final clients = groupBy(tagsPaths, (element) => element.tag);

    for (final entry in clients.entries) {
      final tag = entry.key;
      final paths = entry.value;

      print('-----Generating client for tag: $tag');

      for (final path in paths) {
        print('---------method: ${config.renameProperty(path.tag)}');
      }
    }
    return (filename: '', content: '');
  }
}
