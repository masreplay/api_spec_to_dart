import 'recase.dart';

final keywords = <String>{
  'abstract',
  'as',
  'assert',
  'async',
  'await',
  'base',
  'break',
  'case',
  'catch',
  'class',
  'const',
  'continue',
  'covariant',
  'default',
  'deferred',
  'do',
  'dynamic',
  'else',
  'enum',
  'export',
  'extends',
  'extension',
  'external',
  'factory',
  'false',
  'final',
  'var',
  'finally',
  'for',
  'Function',
  'get',
  'hide',
  'if',
  'implements',
  'import',
  'in',
  'interface',
  'is',
  'late',
  'library',
  'mixin',
  'new',
  'null',
  'of',
  'on',
  'operator',
  'part',
  'required',
  'rethrow',
  'return',
  'sealed',
  'set',
  'show',
  'static',
  'super',
  'switch',
  'sync',
  'this',
  'throw',
  'true',
  'try',
  'typedef',
  'void',
  'when',
  'with',
  'while',
  'yield',
};

class Renaming {
  const Renaming._();

  static Renaming get _instance => const Renaming._();

  static Renaming get instance => _instance;

  String _guard(String text, {bool translateSpecialCharacters = false}) {
    // TODO(masreplay): find a better way, than `AA`
    text = keywords.contains(text.toLowerCase()) ? '${text}AA' : text;

    if (translateSpecialCharacters) {
      final extra = {
        '+': 'plus',
        '-': 'minus',
        '*': 'star',
        '/': 'slash',
        '=': 'equals',
        '|': 'pipe',
        '&': 'ampersand',
        '^': 'caret',
      };

      for (final entry in extra.entries) {
        text = text.replaceAll(entry.key, '_${entry.value}_');
      }
    }

    text = text.replaceAll(' ', '_');

    return text;
  }

  String renameProperty(String key) {
    return Recase.instance.toCamelCase(_guard(
      key,
      translateSpecialCharacters: true,
    ));
  }

  String renameFunction(String key) {
    return Recase.instance.toCamelCase(_guard(key));
  }

  String renameEnum(String key) {
    return Recase.instance.toPascalCase(_guard(key));
  }

  String renameEnumValue(
    Object value,
  ) {
    if (int.tryParse(value.toString()) != null) {
      final intValue = int.parse(value.toString());
      if (intValue < 0) {
        // Handle negative integers by replacing minus with "Minus"
        return 'valueMinus${intValue.abs()}';
      } else {
        return 'value$value';
      }
    } else if (value is String) {
      return Recase.instance.toCamelCase(_guard(
        value,
        translateSpecialCharacters: true,
      ));
    } else {
      return 'value$value';
    }
  }

  String renameClass(String value) {
    final name = Recase.instance.toPascalCase(_guard(value));

    if (name.endsWith('NoneType')) {
      return name.substring(0, name.length - 8);
    }

    return name;
  }

  String renameFile(String key) {
    final name = Recase.instance.toSnakeCase(_guard(key));

    if (name.endsWith('none_type')) {
      return name.substring(0, name.length - 9);
    }

    return name;
  }
}
