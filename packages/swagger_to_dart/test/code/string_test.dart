import 'package:swagger_to_dart/src/code/string.dart';
import 'package:test/test.dart';

void main() {
  test('dartString single-quotes plain text', () {
    expect(dartString('Rafraîchir'), "'Rafraîchir'");
  });

  test('dartString escapes what would end or interpolate the literal', () {
    expect(dartString("d'Artagnan"), r"'d\'Artagnan'"); // #59
    expect(dartString(r'$ref'), r"'\$ref'"); // #60
    expect(dartString(r'a\b'), r"'a\\b'");
  });

  test('dartString escapes control characters', () {
    expect(dartString('line1\nline2\tx\r'), r"'line1\nline2\tx\r'"); // #64
    expect(dartString('\u0007'), r"'\u{7}'");
  });
}
