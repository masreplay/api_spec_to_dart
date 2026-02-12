import 'package:code_builder/code_builder.dart';

Code stringCode(String value) {
  // Check if the string contains newlines or other special characters
  // that would make raw strings invalid
  if (value.contains('\n') || value.contains('\r') || value.contains(r'\')) {
    // Use regular string with proper escaping
    final escaped = value
        .replaceAll(r'\', r'\\') // Escape backslashes first
        .replaceAll("'", r"\'") // Escape single quotes
        .replaceAll('\n', r'\n') // Convert newlines to \n
        .replaceAll('\r', r'\r') // Convert carriage returns to \r
        .replaceAll('\t', r'\t') // Convert tabs to \t
        .replaceAll(r'$', r'\$'); // Escape dollar signs
    return Code("'$escaped'");
  }

  // For simple strings without special characters, raw string is fine
  return Code("r'$value'");
}
