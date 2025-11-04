import 'package:swagger_to_dart/src/generator/model/strategy/debug.dart';
import 'package:swagger_to_dart/src/generator/model/strategy/generic_parser_base.dart';

class AbpGenericParser with DebugMixin implements GenericParserBase {
  AbpGenericParser._internal();

  static AbpGenericParser get _instance => AbpGenericParser._internal();

  static AbpGenericParser get instance => _instance;

  @override
  String get tag => 'AbpGenericParser';

  @override
  bool isFormat(String input) {
    return input.contains('`') && _hasBacktickFormat(input);
  }

  @override
  String? toStandardFormat(String input) {
    debug('toStandardFormat: $input');

    if (!isFormat(input)) {
      debug('Not ABP format.');
      return null;
    }

    // Find the backtick
    final backtickIndex = input.indexOf('`');
    if (backtickIndex == -1) {
      print('DEBUG: No backtick found.');
      return null;
    }

    // Extract base class name (everything before the backtick)
    final baseClassName = input.substring(0, backtickIndex);
    print('DEBUG: baseClassName = $baseClassName');

    // Find the opening bracket after the backtick
    final bracketStart = input.indexOf('[[', backtickIndex);
    if (bracketStart == -1) {
      // No generics, just return the base class name
      print(
          'DEBUG: No generic [[ found. Returning short class name for $baseClassName');
      return _extractShortClassName(baseClassName);
    }

    // Extract everything after the first `[[`
    final genericsContent = input.substring(bracketStart + 2);
    print('DEBUG: genericsContent = $genericsContent');

    // Parse generic arguments
    final genericTypes = _parseGenericArguments(genericsContent);
    print('DEBUG: genericTypes = $genericTypes');

    if (genericTypes.isEmpty) {
      print(
          'DEBUG: No generic types found. Returning short class name for $baseClassName');
      return _extractShortClassName(baseClassName);
    }

    // Extract short names from full type names
    final shortGenericTypes = genericTypes.map((type) {
      final short = _extractShortClassName(type);
      print('DEBUG: Short generic type from $type = $short');
      return short;
    }).toList();

    // Combine base class name with generics
    final shortBaseClassName = _extractShortClassName(baseClassName);
    print(
        'DEBUG: shortBaseClassName = $shortBaseClassName, shortGenericTypes = $shortGenericTypes');
    final result = '$shortBaseClassName<${shortGenericTypes.join(', ')}>';
    print('DEBUG: Resulting standard format = $result');
    return result;
  }

  @override
  List<String> extractGenericArguments(String input) {
    if (!isFormat(input)) {
      return [];
    }

    try {
      final bracketStart = input.indexOf('[[');
      if (bracketStart == -1) {
        return [];
      }

      final genericsContent = input.substring(bracketStart + 2);
      return _parseGenericArguments(genericsContent);
    } catch (e) {
      return [];
    }
  }

  @override
  String? extractBaseClassName(String input) {
    if (!isFormat(input)) {
      return null;
    }

    final backtickIndex = input.indexOf('`');
    if (backtickIndex == -1) {
      return null;
    }

    return input.substring(0, backtickIndex);
  }

  bool _hasBacktickFormat(String input) {
    final backtickIndex = input.indexOf('`');
    if (backtickIndex == -1 || backtickIndex == input.length - 1) {
      return false;
    }

    // Check if there's a number after the backtick
    final afterBacktick = input.substring(backtickIndex + 1);
    final numberMatch = RegExp(r'^\d+').firstMatch(afterBacktick);
    return numberMatch != null;
  }

  List<String> _parseGenericArguments(String content) {
    final types = <String>[];
    final buffer = StringBuffer();
    int bracketDepth = 0;
    bool insideArg = false;

    // Since we extracted content after [[, we might already be inside an argument
    // Start with bracketDepth = 0 and insideArg = true if content doesn't start with [
    if (content.isNotEmpty && content[0] != '[') {
      insideArg = true;
    }

    for (var i = 0; i < content.length; i++) {
      final char = content[i];

      if (char == '[') {
        bracketDepth++;
        if (bracketDepth == 1) {
          // Start of a new generic argument
          insideArg = true;
          buffer.clear();
        } else {
          buffer.write(char);
        }
      } else if (char == ']') {
        if (bracketDepth == 0 && insideArg) {
          // We're at the closing bracket of the first argument (no [ was seen)
          // Extract what we've collected so far
          final argContent = buffer.toString();
          final typeName = _extractTypeNameFromArg(argContent);
          if (typeName.isNotEmpty) {
            types.add(typeName);
          }
          insideArg = false;
          buffer.clear();
          // Continue to see if there are more arguments
        } else if (bracketDepth == 1 && insideArg) {
          // End of current generic argument bracket
          final argContent = buffer.toString();
          // Extract type name (first part before comma)
          final typeName = _extractTypeNameFromArg(argContent);
          if (typeName.isNotEmpty) {
            types.add(typeName);
          }
          insideArg = false;
          buffer.clear();
        } else {
          buffer.write(char);
        }
        bracketDepth--;
        if (bracketDepth < 0) {
          // Reached the end of all brackets, stop parsing
          break;
        }
      } else if (char == ',' && bracketDepth == 0 && insideArg) {
        // First comma in the argument (when we're at depth 0, meaning no [ was seen)
        // This separates type name from assembly info
        final typeName = _extractTypeNameFromArg(buffer.toString());
        if (typeName.isNotEmpty) {
          types.add(typeName);
        }
        buffer.clear();
        insideArg = false;
        // Skip the rest until closing bracket
        while (i < content.length - 1 && content[i + 1] != ']') {
          i++;
        }
      } else if (char == ',' && bracketDepth == 1 && insideArg) {
        // First comma in the argument - this separates type name from assembly info
        // We've already captured the type name, so we can stop here
        final typeName = _extractTypeNameFromArg(buffer.toString());
        if (typeName.isNotEmpty) {
          types.add(typeName);
        }
        buffer.clear();
        insideArg = false;
        // Skip the rest until closing bracket
        while (i < content.length - 1 && content[i + 1] != ']') {
          i++;
        }
      } else if (insideArg) {
        buffer.write(char);
      }
    }

    // Handle last argument if buffer is not empty
    if (buffer.isNotEmpty && insideArg) {
      final typeName = _extractTypeNameFromArg(buffer.toString());
      if (typeName.isNotEmpty) {
        types.add(typeName);
      }
    }

    return types;
  }

  String _extractTypeNameFromArg(String argContent) {
    // Take the part before the first comma
    final commaIndex = argContent.indexOf(',');
    if (commaIndex == -1) {
      return argContent.trim();
    }
    return argContent.substring(0, commaIndex).trim();
  }

  String _extractShortClassName(String fullName) {
    final parts = fullName.split('.');
    return parts.isNotEmpty ? parts.last : fullName;
  }
}
