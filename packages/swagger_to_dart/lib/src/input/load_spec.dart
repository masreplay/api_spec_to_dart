import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

import '../utils/yaml.dart';

/// Reads [path] (a JSON or YAML file, or a directory = Postman v3) or fetches
/// [url], and returns the decoded document.
///
/// A fetched document refreshes the local copy at [path]; when the fetch
/// fails and a local copy exists, it is used instead, with a loud warning.
Future<Object?> loadSpec({String? url, required String path}) async {
  if (url != null) {
    final uri = Uri.tryParse(url);
    if (uri == null || !uri.hasScheme) {
      throw FormatException('Invalid spec url', url);
    }

    final file = File(path);
    try {
      print('Fetching the API specification from $url');
      final document = _decode(await _fetch(uri), uri.path);
      if (document is! Map) {
        throw FormatException('The spec is not a JSON or YAML object', url);
      }

      // Always refresh: a write-once cache silently ages while generation
      // uses the live document, so the file stops describing the client.
      // JSON is valid YAML too, whatever the file's extension.
      await file.parent.create(recursive: true);
      await file.writeAsString(
        const JsonEncoder.withIndent('  ').convert(document),
      );
      return document;
    } on Exception catch (e) {
      // Generating from a stale spec looks like success and silently drops
      // endpoints, so the fallback is loud.
      if (!file.existsSync()) rethrow;
      final age = DateTime.now().difference(file.lastModifiedSync());
      print('!' * 78);
      print('WARNING: could not fetch the spec from $url\n  $e');
      print(
        'Falling back to ${file.path}, last modified ${age.inDays} day(s) '
        'ago. Endpoints added since then are missing from the output.',
      );
      print('!' * 78);
    }
  }

  return readSpecSync(path);
}

/// The local-file half of [loadSpec], synchronous (used by test fixtures).
Object? readSpecSync(String path) {
  if (FileSystemEntity.isDirectorySync(path)) {
    return {'x-postman-v3-directory': path};
  }
  final file = File(path);
  if (!file.existsSync()) {
    throw FileSystemException('Spec input not found', path);
  }
  return _decode(file.readAsStringSync(), path);
}

/// JSON for `.json` names and text starting like JSON, YAML otherwise.
Object? _decode(String text, String name) {
  final extension = p.extension(name).toLowerCase();
  final isYaml =
      extension == '.yaml' ||
      extension == '.yml' ||
      (extension != '.json' && !RegExp(r'^\s*[{[]').hasMatch(text));
  return isYaml ? YamlMapConverter.toPlain(loadYaml(text)) : jsonDecode(text);
}

Future<String> _fetch(Uri uri) async {
  final client = HttpClient();
  try {
    final response = await (await client.getUrl(uri)).close();
    final body = await response.transform(utf8.decoder).join();
    if (response.statusCode ~/ 100 != 2) {
      throw HttpException('HTTP ${response.statusCode}', uri: uri);
    }
    return body;
  } finally {
    client.close();
  }
}
