import 'dart:convert';

class JsonFactory {
  const JsonFactory._internal();

  static const JsonFactory _instance = JsonFactory._internal();

  static JsonFactory get instance => _instance;

  String encode(Map<String, dynamic> json) {
    return JsonEncoder.withIndent('    ').convert(json);
  }

  /// Doc comment lines: [title], then [json] in a fenced block so dartdoc
  /// and the analyzer treat it as code (no HTML, no `[links]`).
  List<String> docs(String title, Map<String, dynamic> json) => [
    '/// $title',
    '///',
    '/// ```json',
    ...encode(json).split('\n').map((line) => '/// $line'),
    '/// ```',
  ];
}
