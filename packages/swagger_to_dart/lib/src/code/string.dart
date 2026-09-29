import 'package:code_builder/code_builder.dart';

/// A single-quoted Dart string literal whose runtime value is exactly [value].
///
/// Every string emitted into generated code goes through here: spec text can
/// contain quotes, `$`, backslashes and newlines (#59, #60, #64).
String dartString(String value) {
  final out = StringBuffer("'");
  for (final rune in value.runes) {
    out.write(switch (rune) {
      0x5C => r'\\',
      0x27 => r"\'",
      0x24 => r'\$',
      0x0A => r'\n',
      0x0D => r'\r',
      0x09 => r'\t',
      < 0x20 || 0x7F => '\\u{${rune.toRadixString(16)}}',
      _ => String.fromCharCode(rune),
    });
  }
  return (out..write("'")).toString();
}

Code stringCode(String value) => Code(dartString(value));
