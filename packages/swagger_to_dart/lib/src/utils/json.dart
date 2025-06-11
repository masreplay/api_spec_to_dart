import 'dart:convert';

class JsonFactory {
  const JsonFactory._internal();

  static const JsonFactory _instance = JsonFactory._internal();

  static JsonFactory get instance => _instance;

  String encode(Map<String, dynamic> json) {
    return JsonEncoder.withIndent('    ').convert(json);
  }
}
