/// [Recase] for handling file names and class names.
///
/// Stateless: the result for a text never depends on earlier calls.
class Recase {
  const Recase._();

  static const Recase _instance = Recase._();

  static Recase get instance => _instance;

  // Anything that cannot appear in a word separates words.
  static final _wordCharacter = RegExp('[A-Za-z0-9]');
  static final _upperCaseRegex = RegExp('[A-Z]');
  static final _lowerCaseRegex = RegExp('[a-z]');
  static final _acronym = RegExp(r'^[A-Za-z0-9]{0,3}$');

  String removeNonAscii(String text) {
    return text.replaceAll(RegExp(r'[^\x00-\x7F]'), '');
  }

  List<String> _words(String text) {
    text = removeNonAscii(text);
    final sb = StringBuffer();
    final words = <String>[];
    final isAllCaps = text.toUpperCase() == text;

    for (var i = 0; i < text.length; i++) {
      final char = text[i];
      if (!_wordCharacter.hasMatch(char)) continue;

      final nextChar = i + 1 == text.length ? null : text[i + 1];
      final nextSecondChar = i + 2 >= text.length ? null : text[i + 2];

      sb.write(char);

      final isEndOfWord =
          nextChar == null ||
          (_upperCaseRegex.hasMatch(nextChar) &&
              !isAllCaps &&
              (!_upperCaseRegex.hasMatch(char) ||
                  (nextSecondChar != null &&
                      _lowerCaseRegex.hasMatch(nextSecondChar)))) ||
          !_wordCharacter.hasMatch(nextChar);

      if (isEndOfWord) {
        words.add(sb.toString());
        sb.clear();
      }
    }

    return words;
  }

  String _upperCaseFirstLetter(String word) {
    // Keep short acronyms (ID, API) as-is when they are already upper case.
    if (word.length <= 3 && word.toUpperCase() == word) return word;

    return '${word.substring(0, 1).toUpperCase()}${word.substring(1).toLowerCase()}';
  }

  /// Convert text to camelCase
  String toCamelCase(String text) {
    // Special case for acronyms (only word characters: not `عمر` or ` `)
    if (_acronym.hasMatch(text) && text.toUpperCase() == text) {
      return text.toLowerCase();
    }

    var result = _words(text).map(_upperCaseFirstLetter).join();
    if (result.isNotEmpty) {
      result = result[0].toLowerCase() + result.substring(1);
    }
    return result;
  }

  /// Convert text to PascalCase
  String toPascalCase(String text) {
    // Special case for acronyms like "API"
    if (_acronym.hasMatch(text) && text.toUpperCase() == text) {
      return text;
    }

    return _words(text).map(_upperCaseFirstLetter).join();
  }

  /// Convert text to snake_case
  String toSnakeCase(String text) {
    return _words(text).map((word) => word.toLowerCase()).join('_');
  }

  /// Convert text to SCREAMING_SNAKE_CASE
  String toScreamingSnakeCase(String text) {
    return toSnakeCase(text).toUpperCase();
  }
}
