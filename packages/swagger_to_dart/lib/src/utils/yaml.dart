import 'dart:convert';
import 'package:yaml/yaml.dart';

/// A utility class for converting between YAML and Dart Maps.
class YamlMapConverter {
  /// Converts a YamlMap to a regular Dart Map.
  ///
  /// [yamlMap] The YamlMap to convert.
  ///
  /// Returns a regular Dart Map.
  static Map<String, dynamic> yamlMapToMap(YamlMap yamlMap) {
    return _convertYamlToMap(yamlMap);
  }

  /// Converts a YAML string to a regular Dart Map.
  ///
  /// [yamlString] The YAML string to convert.
  ///
  /// Returns a regular Dart Map.
  static Map<String, dynamic> yamlToMap(String yamlString) {
    final yamlMap = loadYaml(yamlString) as YamlMap;
    return yamlMapToMap(yamlMap);
  }

  /// Converts a regular Dart Map to a YAML string.
  ///
  /// [map] The Map to convert.
  ///
  /// Returns a YAML string.
  static String mapToYaml(Map<String, dynamic> map) {
    return jsonToYaml(jsonEncode(map));
  }

  /// Converts a JSON string to a YAML string.
  ///
  /// [jsonString] The JSON string to convert.
  ///
  /// Returns a YAML string.
  static String jsonToYaml(String jsonString) {
    final jsonMap = jsonDecode(jsonString);
    return _mapToYamlString(jsonMap);
  }

  /// Recursively converts YamlMap to a regular Map.
  static dynamic _convertYamlToMap(dynamic yaml) {
    if (yaml is YamlMap) {
      final map = <String, dynamic>{};
      for (final entry in yaml.entries) {
        map[entry.key.toString()] = _convertYamlToMap(entry.value);
      }
      return map;
    } else if (yaml is YamlList) {
      return yaml.map((item) => _convertYamlToMap(item)).toList();
    } else {
      return yaml;
    }
  }

  /// Converts a Map to a YAML string.
  static String _mapToYamlString(dynamic json, {int indent = 0}) {
    if (json is Map) {
      if (json.isEmpty) return '{}';

      final buffer = StringBuffer();
      json.forEach((key, value) {
        if (buffer.isNotEmpty) buffer.writeln();
        buffer.write('${' ' * indent}$key:');

        if (value is Map) {
          if (value.isEmpty) {
            buffer.write(' {}');
          } else {
            buffer.writeln();
            buffer.write(_mapToYamlString(value, indent: indent + 2));
          }
        } else if (value is List) {
          if (value.isEmpty) {
            buffer.write(' []');
          } else {
            buffer.writeln();
            buffer.write(_mapToYamlString(value, indent: indent + 2));
          }
        } else {
          buffer.write(' ${_formatScalarValue(value)}');
        }
      });
      return buffer.toString();
    } else if (json is List) {
      if (json.isEmpty) return '[]';

      final buffer = StringBuffer();
      for (final item in json) {
        buffer.writeln();
        buffer.write('${' ' * indent}- ');

        if (item is Map) {
          if (item.isEmpty) {
            buffer.write('{}');
          } else {
            // For maps in lists
            bool isFirst = true;
            for (final entry in item.entries) {
              if (isFirst) {
                buffer.write('${entry.key}:');
                isFirst = false;
              } else {
                buffer.writeln();
                buffer.write('${' ' * (indent + 2)}${entry.key}:');
              }

              if (entry.value is Map || entry.value is List) {
                if ((entry.value is Map && (entry.value as Map).isEmpty) ||
                    (entry.value is List && (entry.value as List).isEmpty)) {
                  buffer.write(' ${entry.value is Map ? "{}" : "[]"}');
                } else {
                  buffer.writeln();
                  buffer.write(
                    _mapToYamlString(entry.value, indent: indent + 4),
                  );
                }
              } else {
                buffer.write(' ${_formatScalarValue(entry.value)}');
              }
            }
          }
        } else if (item is List) {
          if (item.isEmpty) {
            buffer.write('[]');
          } else {
            buffer.write(_mapToYamlString(item, indent: indent + 2));
          }
        } else {
          buffer.write(_formatScalarValue(item));
        }
      }
      return buffer.toString();
    } else {
      return _formatScalarValue(json);
    }
  }

  /// Format scalar values appropriately for YAML
  static String _formatScalarValue(dynamic value) {
    if (value == null) return 'null';
    if (value is String) {
      if (value.contains('\n')) {
        // Multiline string
        return '|\n${value.split('\n').map((line) => '  $line').join('\n')}';
      }
      // Escape special characters
      if (value.contains(':') ||
          value.contains('{') ||
          value.contains('}') ||
          value.contains('[') ||
          value.contains(']') ||
          value.contains(',') ||
          value == 'true' ||
          value == 'false' ||
          value == 'null' ||
          RegExp(r'^[0-9]+$').hasMatch(value)) {
        return '"${value.replaceAll('"', '\\"')}"';
      }
      return value;
    }
    return value.toString();
  }
}

/// Extensions for YamlMap
extension YamlMapExtension on YamlMap {
  /// Converts this YamlMap to a regular Dart Map.
  Map<String, dynamic> toMap() {
    return YamlMapConverter.yamlMapToMap(this);
  }
}

/// Example usage
void main() {
  // Example YamlMap
  final yamlString = '''
name: My Project
version: 1.0.0
dependencies:
  flutter: sdk
  http: ^0.13.4
environment:
  sdk: '>=2.12.0 <3.0.0'
nested:
  list:
    - item1
    - item2
  emptyMap: {}
  emptyList: []
''';

  // Parse YAML to YamlMap
  final yamlMap = loadYaml(yamlString) as YamlMap;

  // Convert YamlMap to regular Map
  final dartMap = yamlMap.toMap();
  print('Dart Map:');
  print(dartMap);

  // Convert Map back to YAML
  final convertedYaml = YamlMapConverter.mapToYaml(dartMap);
  print('\nConverted back to YAML:');
  print(convertedYaml);

  // Direct conversion from YAML string to Map
  final directMap = YamlMapConverter.yamlToMap(yamlString);
  print('\nDirect conversion from YAML string to Map:');
  print(directMap);
}
