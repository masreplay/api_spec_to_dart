/// Parser for FastAPI generic type format
///
/// Handles formats like:
/// - `BaseResponse[ItemResponse]`
/// - `PaginationResponse[CategoryResponse]`
/// - `BaseResponse[PaginationResponse[ItemResponse]]`
class FastApiGenericParser {
  /// Checks if the given string is in FastAPI format
  ///
  /// FastAPI format is identified by square brackets (not backtick)
  /// Example: `ClassName[Type]`
  static bool isFastApiFormat(String input) {
    // FastAPI format uses square brackets, not backtick
    // It should not be ABP format
    if (input.contains('`')) {
      return false;
    }

    // Check for square bracket pattern
    final bracketPattern = RegExp(r'^[^\[\]]+\[.+\]$');
    return bracketPattern.hasMatch(input);
  }

  /// Converts FastAPI format to standard format
  ///
  /// Example:
  /// Input: `BaseResponse[ItemResponse]`
  /// Output: `BaseResponse<ItemResponse>`
  ///
  /// Input: `BaseResponse[PaginationResponse[ItemResponse]]`
  /// Output: `BaseResponse<PaginationResponse<ItemResponse>>`
  ///
  /// Returns null if the input is not in FastAPI format or cannot be parsed
  static String? toStandardFormat(String input) {
    if (!isFastApiFormat(input)) {
      return null;
    }

    try {
      final genericStart = input.indexOf('[');
      final genericEnd = input.lastIndexOf(']');

      if (genericStart == -1 || genericEnd == -1 || genericEnd <= genericStart) {
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
      final processedGenerics = genericTypes
          .map((type) {
            // Check if this type itself has generics
            final converted = toStandardFormat(type.trim());
            return converted ?? type.trim();
          })
          .join(', ');

      return '$baseClassName<$processedGenerics>';
    } catch (e) {
      return null;
    }
  }

  /// Splits generic arguments respecting nested brackets
  ///
  /// Example: `Type1, Type2[NestedType]` -> `['Type1', 'Type2[NestedType]']`
  static List<String> _splitGenerics(String input) {
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

  /// Extracts generic type arguments from FastAPI format
  ///
  /// Example: `BaseResponse[ItemResponse]`
  /// Returns: `['ItemResponse']`
  static List<String> extractGenericArguments(String input) {
    if (!isFastApiFormat(input)) {
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

  /// Extracts the base class name from FastAPI format
  ///
  /// Example: `BaseResponse[ItemResponse]`
  /// Returns: `BaseResponse`
  static String? extractBaseClassName(String input) {
    if (!isFastApiFormat(input)) {
      return null;
    }

    final genericStart = input.indexOf('[');
    if (genericStart == -1) {
      return null;
    }

    return input.substring(0, genericStart);
  }
}

