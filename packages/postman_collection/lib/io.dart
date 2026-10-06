/// Reading Postman v3 collection directories (needs `dart:io`).
library;

import 'dart:io';

import 'src/convert/v3.dart';

/// Reads a v3 collection directory (`*.request.yaml`, `.resources/…`) as a
/// v2.1 collection map. The directory name is the default collection name.
Map<String, Object?> readPostmanCollectionDirectory(
  String path, {
  void Function(String message)? onWarning,
}) {
  final root = Directory(path);
  final prefix = root.path.endsWith(Platform.pathSeparator)
      ? root.path
      : '${root.path}${Platform.pathSeparator}';
  final files = {
    for (final file in root.listSync(recursive: true).whereType<File>())
      if (file.path.endsWith('.yaml'))
        file.path.substring(prefix.length).replaceAll(r'\', '/'): file
            .readAsStringSync(),
  };
  return postmanCollectionFromV3Files(
    files,
    name: root.absolute.uri.pathSegments.where((s) => s.isNotEmpty).last,
    onWarning: onWarning,
  );
}
