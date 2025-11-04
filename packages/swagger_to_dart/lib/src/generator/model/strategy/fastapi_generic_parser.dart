import 'package:swagger_to_dart/src/generator/model/strategy/debug.dart';
import 'package:swagger_to_dart/src/generator/model/strategy/generic_parser_base.dart';

class FastApiGenericParser with DebugMixin implements GenericParserBase {
  FastApiGenericParser._internal();

  static FastApiGenericParser get _instance => FastApiGenericParser._internal();

  static FastApiGenericParser get instance => _instance;

  @override
  String get tag => 'FastApiGenericParser';

  @override
  bool isFormat(String input) {
    // FastAPI format uses square brackets, not backtick
    // It should not be ABP format
    if (input.contains('`')) {
      return false;
    }

    // Check for square bracket pattern
    final bracketPattern = RegExp(r'^[^\[\]]+\[.+\]$');
    return bracketPattern.hasMatch(input);
  }

  @override
  String? toStandardFormat(String input) {
    if (!isFormat(input)) {
      return null;
    }

    try {
      final genericStart = input.indexOf('[');
      final genericEnd = input.lastIndexOf(']');

      if (genericStart == -1 ||
          genericEnd == -1 ||
          genericEnd <= genericStart) {
        return null;
      }

      final baseClassName = input.substring(0, genericStart);
      final genericsContent = input.substring(genericStart + 1, genericEnd);

      // Split generics by comma, but respect nested brackets
      final genericTypes = _splitGenerics(genericsContent);

      if (genericTypes.isEmpty) {
        return baseClassName;
      }

      // Recursively process nested generics
      final processedGenerics = genericTypes.map((type) {
        // Check if this type itself has generics
        final converted = toStandardFormat(type.trim());
        return converted ?? type.trim();
      }).join(', ');

      return '$baseClassName<$processedGenerics>';
    } catch (e) {
      return null;
    }
  }

  @override
  List<String> extractGenericArguments(String input) {
    if (!isFormat(input)) {
      return [];
    }

    try {
      final genericStart = input.indexOf('[');
      final genericEnd = input.lastIndexOf(']');

      if (genericStart == -1 || genericEnd == -1) {
        return [];
      }

      final genericsContent = input.substring(genericStart + 1, genericEnd);
      return _splitGenerics(genericsContent);
    } catch (e) {
      return [];
    }
  }

  @override
  String? extractBaseClassName(String input) {
    if (!isFormat(input)) {
      return null;
    }

    final genericStart = input.indexOf('[');
    if (genericStart == -1) {
      return null;
    }

    return input.substring(0, genericStart);
  }

  List<String> _splitGenerics(String input) {
    final parts = <String>[];
    final buffer = StringBuffer();
    int depth = 0;

    for (var i = 0; i < input.length; i++) {
      final char = input[i];

      if (char == '[') {
        depth++;
        buffer.write(char);
      } else if (char == ']') {
        depth--;
        buffer.write(char);
      } else if (char == ',' && depth == 0) {
        // Top-level comma - split here
        parts.add(buffer.toString());
        buffer.clear();
      } else {
        buffer.write(char);
      }
    }

    // Add remaining part
    if (buffer.isNotEmpty) {
      parts.add(buffer.toString());
    }

    return parts;
  }
}
