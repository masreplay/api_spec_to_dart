/// [Recase] for handling file names and class names
class Recase {
  Recase._();

  static final Recase _instance = Recase._();

  static Recase get instance => _instance;

  // Split text into words
  late List<String> _words;

  static const _separateSymbolsList = r' #,-./@\_{}()[]<>:;`~!$%^&*+=|\';
  static final _upperCaseRegex = RegExp('[A-Z]');
  static final _lowerCaseRegex = RegExp('[a-z]');
  final Set<String> _upperCaseTwoLettersRowWords = {};

  void initialize(String text) {
    _words = _groupIntoWords(text);
  }

  List<String> _groupIntoWords(String text) {
    final sb = StringBuffer();
    final words = <String>[];
    final isAllCaps = text.toUpperCase() == text;

    for (var i = 0; i < text.length; i++) {
      final char = text[i];
      if (_separateSymbolsList.contains(char)) {
        // Skip the underscore prefix for private fields
        if (i == 0 && char == '_') {
          continue;
        }
        continue;
      }

      final nextChar = i + 1 == text.length ? null : text[i + 1];
      final nextSecondChar = i + 2 >= text.length ? null : text[i + 2];

      sb.write(char);

      final isEndOfWord = nextChar == null ||
          (_upperCaseRegex.hasMatch(nextChar) &&
              !isAllCaps &&
              (!_upperCaseRegex.hasMatch(char) ||
                  (nextSecondChar != null &&
                      _lowerCaseRegex.hasMatch(nextSecondChar)))) ||
          _separateSymbolsList.contains(nextChar);

      if (isEndOfWord) {
        final word = sb.toString();
        if (sb.length == 2 && word.toUpperCase() == word) {
          _upperCaseTwoLettersRowWords.add(word);
        }
        words.add(word);
        sb.clear();
      }
    }

    // Special case: if there's just one word and it's all caps and 2-3 letters, keep it as one word
    if (words.length == 1 &&
        words[0].toUpperCase() == words[0] &&
        words[0].length <= 3) {
      _upperCaseTwoLettersRowWords.add(words[0]);
    }

    return words;
  }

  String _upperCaseFirstLetter(String word) {
    if (word.length <= 3 && word.toUpperCase() == word) {
      return word; // Keep short acronyms as-is when they're already uppercase
    }

    // Handle 2-letter word that should be uppercase
    if (word.length == 2) {
      final upperCase = word.toUpperCase();
      if (_upperCaseTwoLettersRowWords.contains(upperCase)) {
        return upperCase;
      }
    }
    return '${word.substring(0, 1).toUpperCase()}${word.substring(1).toLowerCase()}';
  }

  /// Convert text to camelCase
  String toCamelCase(String text) {
    initialize(text);

    // Special case for acronyms
    if (text.length <= 3 && text.toUpperCase() == text) {
      return text.toLowerCase();
    }

    var result = _words.map(_upperCaseFirstLetter).join();
    if (result.isNotEmpty) {
      result = result[0].toLowerCase() + result.substring(1);
    }
    return result;
  }

  /// Convert text to PascalCase
  String toPascalCase(String text) {
    initialize(text);

    // Special case for acronyms like "API"
    if (text.length <= 3 && text.toUpperCase() == text) {
      return text;
    }

    return _words.map(_upperCaseFirstLetter).join();
  }

  /// Convert text to snake_case
  String toSnakeCase(String text) {
    initialize(text);
    return _words.map((word) => word.toLowerCase()).join('_');
  }

  /// Convert text to SCREAMING_SNAKE_CASE
  String toScreamingSnakeCase(String text) {
    initialize(text);
    return toSnakeCase(text).toUpperCase();
  }
}
