// Test file to verify string escaping in encodeWithRawKeys
import 'lib/src/generator/api_client/api_client_generator.dart';

void main() {
  // Test case 1: Simple string without special characters
  final simple = encodeWithRawKeys('hello world');
  print('Simple: $simple');
  assert(simple == "r'hello world'", 'Expected raw string for simple text');

  // Test case 2: String with newline
  final withNewline = encodeWithRawKeys('Hello\nWorld');
  print('With newline: $withNewline');
  assert(withNewline == "'Hello\\nWorld'", 'Expected escaped newline');

  // Test case 3: String with multiple newlines (like in description)
  final multiNewline = encodeWithRawKeys(
      'HTTP proxy endpoint.\n\nArgs:\n    request: The original request from client.');
  print('Multi newline: $multiNewline');
  assert(
      multiNewline ==
          "'HTTP proxy endpoint.\\n\\nArgs:\\n    request: The original request from client.'",
      'Expected escaped newlines');

  // Test case 4: String with single quote
  final withQuote = encodeWithRawKeys("It's a test");
  print('With quote: $withQuote');
  assert(withQuote == "'It\\'s a test'", 'Expected escaped single quote');

  // Test case 5: String with backslash
  final withBackslash = encodeWithRawKeys('path\\to\\file');
  print('With backslash: $withBackslash');
  assert(withBackslash == "'path\\\\to\\\\file'", 'Expected escaped backslash');

  // Test case 6: Map with newlines in values
  final map = encodeWithRawKeys({
    'description': 'Line 1\nLine 2',
    'summary': 'Simple summary',
  });
  print('Map: $map');

  // Test case 7: Complex nested structure like in @Extras
  final extras = encodeWithRawKeys({
    'tags': ['advanced'],
    'summary': 'Handle UUID parameters',
    'description':
        'HTTP proxy endpoint.\n\nArgs:\n    request: The original request from client.',
    'operationId': 'advanced-special_uuid',
  });
  print('Extras: $extras');

  print('\nAll tests passed! ✓');
}
