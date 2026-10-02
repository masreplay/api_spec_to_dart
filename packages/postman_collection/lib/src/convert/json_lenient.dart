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
///   as written.
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
      case ' ' || '\t' || '\r' || '\n' || '﻿':
        break;
      default:
        emit(char);
    }
    i++;
  }
  try {
    return jsonDecode(out.toString());
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

String _substituteInString(String content, Map<String, String> variables) =>
    content.replaceAllMapped(variableReference, (m) {
      final value = resolveVariable(m[1]!, variables);
      if (value == null) return m[0]!;
      final quoted = jsonEncode(value);
      return quoted.substring(1, quoted.length - 1);
    });

String _bareValue(String? text) {
  if (text == null) return 'null';
  try {
    jsonDecode(text);
    return text;
  } on FormatException {
    return jsonEncode(text);
  }
}
