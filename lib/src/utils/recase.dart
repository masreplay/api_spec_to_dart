class Recase {
  Recase._internal();

  static final Recase _instance = Recase._internal();

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
        if (i == 0 && char == '_') {
          words.add('private');
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

    return words;
  }

  String _upperCaseFirstLetter(String word) {
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
    var result = _words.map(_upperCaseFirstLetter).join();
    if (result.isNotEmpty) {
      result = result[0].toLowerCase() + result.substring(1);
    }
    return result;
  }

  /// Convert text to PascalCase
  String toPascalCase(String text) {
    initialize(text);
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
