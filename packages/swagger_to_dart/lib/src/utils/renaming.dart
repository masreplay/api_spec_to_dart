import 'recase.dart';

/// Never valid identifiers (`await`/`yield` are reserved inside async and
/// generator bodies).
const _reservedWords = {
  'assert', 'await', 'break', 'case', 'catch', 'class', 'const', 'continue',
  'default', 'do', 'else', 'enum', 'extends', 'false', 'final', 'finally',
  'for', 'if', 'in', 'is', 'new', 'null', 'rethrow', 'return', 'super',
  'switch', 'this', 'throw', 'true', 'try', 'var', 'void', 'while', 'with',
  'yield',
};

/// Legal member names that would shadow types used by generated code.
const _shadowingMemberNames = {
  'dynamic', 'Function', 'int', 'double', 'num', 'bool', //
};

/// Built-in identifiers cannot name a type.
const _builtInIdentifiers = {
  'abstract', 'as', 'covariant', 'deferred', 'dynamic', 'export',
  'extension', 'external', 'factory', 'Function', 'get', 'implements',
  'import', 'interface', 'late', 'library', 'mixin', 'operator', 'part',
  'required', 'set', 'static', 'typedef',
};

const _symbolNames = {
  '+': 'plus',
  '-': 'minus',
  '*': 'star',
  '/': 'slash',
  '=': 'equals',
  '|': 'pipe',
  '&': 'ampersand',
  '^': 'caret',
};

final _hyphenBetweenWords = RegExp(r'(?<=[A-Za-z0-9])-(?=[A-Za-z0-9])');
final _startsWithDigit = RegExp('^[0-9]');

class Renaming {
  const Renaming._();

  static Renaming get _instance => const Renaming._();

  static Renaming get instance => _instance;

  /// A hyphen between words separates them (`some-header` → `someHeader`,
  /// #28); other symbols are spelled out so `+` and `-` stay distinct.
  String _spellSymbols(String text) {
    text = text.replaceAll(_hyphenBetweenWords, '_');
    for (final MapEntry(key: symbol, value: name) in _symbolNames.entries) {
      text = text.replaceAll(symbol, '_${name}_');
    }
    return text;
  }

  /// Guards a field, parameter, method or enum member name. Only names Dart
  /// rejects are escaped (`$default`), not every keyword-like word (#51).
  String _member(String name) {
    if (name.isEmpty) return 'empty';
    if (_reservedWords.contains(name) ||
        _shadowingMemberNames.contains(name) ||
        _startsWithDigit.hasMatch(name)) {
      return '\$$name';
    }
    return name;
  }

  String _type(String name) {
    if (_reservedWords.contains(name) ||
        _builtInIdentifiers.contains(name) ||
        _startsWithDigit.hasMatch(name)) {
      return '\$$name';
    }
    return name;
  }

  String renameProperty(String key) {
    return _member(Recase.instance.toCamelCase(_spellSymbols(key)));
  }

  /// Dart names for the JSON [keys] of one scope, unique among themselves and
  /// against [reserved] names (`some-key` and `some_key` → `someKey`,
  /// `someKey2`).
  Map<String, String> propertyNames(
    Iterable<String> keys, {
    Set<String> reserved = const {},
  }) {
    final used = {...reserved};
    return {
      for (final key in keys) key: _unique(renameProperty(key), used),
    };
  }

  String _unique(String name, Set<String> used) {
    var candidate = name;
    for (var i = 2; !used.add(candidate); i++) {
      candidate = '$name$i';
    }
    return candidate;
  }

  String renameFunction(String key) {
    return _member(Recase.instance.toCamelCase(key));
  }

  String renameEnum(String key) {
    return _type(Recase.instance.toPascalCase(key));
  }

  String renameEnumValue(Object value, {String? overrideName}) {
    // Opt-in rename from config (swagger_to_dart.yaml `model.enums`).
    if (overrideName != null && overrideName.trim().isNotEmpty) {
      return renameProperty(overrideName);
    }

    if (int.tryParse('$value') case final intValue?) {
      // Keeps 4.x names: value0, valueMinus1.
      return intValue < 0 ? 'valueMinus${intValue.abs()}' : 'value$intValue';
    }

    return renameProperty('$value');
  }

  String renameClass(String value, {List<String>? removePrefixes}) {
    // Remove the longest matching prefix, if any.
    if (removePrefixes != null && removePrefixes.isNotEmpty) {
      final sortedPrefixes = List<String>.from(removePrefixes)
        ..sort((a, b) => b.length.compareTo(a.length));

      for (final prefix in sortedPrefixes) {
        if (value.startsWith(prefix)) {
          value = value.substring(prefix.length);
          break;
        }
      }
    }

    // Handle nullable types ending with '?'
    if (value.endsWith('?')) {
      final baseValue = value.substring(0, value.length - 1);
      return '${Recase.instance.toPascalCase(baseValue)}Nullable';
    }

    final name = Recase.instance.toPascalCase(value);

    if (name.endsWith('NoneType')) {
      return _type(name.substring(0, name.length - 8));
    }

    return _type(name);
  }

  String renameFile(String key) {
    // Handle nullable types ending with '?'
    if (key.endsWith('?')) {
      final baseKey = key.substring(0, key.length - 1);
      return '${Recase.instance.toSnakeCase(baseKey)}_nullable';
    }

    final name = Recase.instance.toSnakeCase(key);

    if (name.endsWith('none_type')) {
      return name.substring(0, name.length - 9);
    }

    return name;
  }
}
