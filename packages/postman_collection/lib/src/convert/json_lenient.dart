import 'dart:convert';

import 'variables.dart';

/// Parses [text] as JSON the way Postman bodies are written, or returns null
/// when it is not JSON:
///
/// - `//` and `/* */` comments, trailing commas and text after the value are
///   ignored;
/// - a bare `{{name}}` takes the variable's text as JSON when that is a JSON
///   value (a string otherwise), and `null` when it is unresolved;
/// - inside strings, `{{name}}` is substituted and unresolved references stay
///   as written; raw control characters are escaped;
/// - no-break spaces count as whitespace;
/// - numbers out of the double range become text (`'Infinity'`), so the
///   result can be encoded again.
Object? parseLenientJson(
  String text, [
  Map<String, String> variables = const {},
]) {
  final out = StringBuffer();
  var depth = 0;
  var pendingComma = false;
  void emit(String token) {
    if (pendingComma) out.write(',');
    pendingComma = false;
    out.write(token);
  }

  var i = 0;
  scan:
  while (i < text.length) {
    final char = text[i];
    switch (char) {
      case '"':
        final end = _stringEnd(text, i + 1);
        emit('"${_substituteInString(text.substring(i + 1, end), variables)}"');
        i = end + 1;
        continue scan;
      case '/' when text.startsWith('//', i):
        final end = text.indexOf('\n', i);
        i = end < 0 ? text.length : end + 1;
        continue scan;
      case '/' when text.startsWith('/*', i):
        final end = text.indexOf('*/', i + 2);
        i = end < 0 ? text.length : end + 2;
        continue scan;
      case '{' when variableReference.matchAsPrefix(text, i) != null:
        final match = variableReference.matchAsPrefix(text, i)!;
        emit(_bareValue(resolveVariable(match[1]!, variables)));
        i = match.end;
        continue scan;
      case ',':
        pendingComma = true;
      case '}' || ']':
        pendingComma = false;
        out.write(char);
        if (--depth == 0) break scan;
      case '{' || '[':
        emit(char);
        depth++;
      case ' ' || '\t' || '\r' || '\n' || '﻿' || '\u00a0':
        break;
      default:
        emit(char);
    }
    i++;
  }
  try {
    return jsonDecode(out.toString(), reviver: nonFiniteAsText);
  } on FormatException {
    return null;
  }
}

/// The index of the quote closing a string whose content starts at [start]
/// (the text length when it is unterminated).
int _stringEnd(String text, int start) {
  for (var i = start; i < text.length; i++) {
    if (text[i] == r'\') {
      i++;
    } else if (text[i] == '"') {
      return i;
    }
  }
  return text.length;
}

/// A `jsonDecode` reviver that turns numbers out of the double range
/// (`1e999`, decoded as infinity) into text, which `jsonEncode` accepts.
Object? nonFiniteAsText(Object? key, Object? value) =>
    value is double && !value.isFinite ? '$value' : value;

String _substituteInString(String content, Map<String, String> variables) =>
    content
        .replaceAllMapped(
          RegExp(r'[\x00-\x1f]'),
          (m) => '\\u${m[0]!.codeUnitAt(0).toRadixString(16).padLeft(4, '0')}',
        )
        .replaceAllMapped(variableReference, (m) {
          final value = resolveVariable(m[1]!, variables);
          if (value == null) return m[0]!;
          final quoted = jsonEncode(value);
          return quoted.substring(1, quoted.length - 1);
        });

/// The text of a Postman `description` (a string or `{content}`), or null.
String? descriptionText(Object? description) => switch (description) {
  final String text when text.isNotEmpty => text,
  {'content': final String text} when text.isNotEmpty => text,
  _ => null,
};

/// Header entries (`{key, value, …}`) from a header list, whose items may be
/// `K: V` strings, or from one raw string of `K: V` lines (`//` disables).
List<Map<Object?, Object?>> headerEntries(Object? header) => switch (header) {
  final List<Object?> list => [
    for (final entry in list)
      if (entry is Map) entry else if (entry is String) ...headerEntries(entry),
  ],
  final String text => [
    for (final line in text.split('\n')) ?_headerLine(line.trim()),
  ],
  _ => const [],
};

Map<Object?, Object?>? _headerLine(String line) {
  final disabled = line.startsWith('//');
  final header = disabled ? line.substring(2) : line;
  final colon = header.indexOf(':');
  final key = colon < 0 ? '' : header.substring(0, colon).trim();
  if (key.isEmpty || key.contains(' ')) return null;
  return {
    'key': key,
    'value': header.substring(colon + 1).trim(),
    if (disabled) 'disabled': true,
  };
}

String _bareValue(String? text) {
  if (text == null) return 'null';
  try {
    jsonDecode(text, reviver: nonFiniteAsText);
    return text;
  } on FormatException {
    return jsonEncode(text);
  }
}
