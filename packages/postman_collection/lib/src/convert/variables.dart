import 'dart:convert';

/// A `{{name}}` reference.
final variableReference = RegExp(r'\{\{([^{}]+)\}\}');

/// The text Postman substitutes for its dynamic variables, as samples of the
/// right type (a bare `{{$randomInt}}` in a JSON body is a number).
const _dynamicSamples = {
  r'$guid': '3fa85f64-5717-4562-b3fc-2c963f66afa6',
  r'$randomUUID': '3fa85f64-5717-4562-b3fc-2c963f66afa6',
  r'$timestamp': '1704103200',
  r'$isoTimestamp': '2024-01-01T10:00:00.000Z',
  r'$randomInt': '42',
  r'$randomBoolean': 'true',
  r'$randomPrice': '42.50',
  r'$randomLatitude': '33.3152',
  r'$randomLongitude': '44.3661',
  r'$randomEmail': 'user@example.com',
  r'$randomExampleEmail': 'user@example.com',
  r'$randomUserName': 'user',
  r'$randomFirstName': 'Jane',
  r'$randomLastName': 'Doe',
  r'$randomFullName': 'Jane Doe',
  r'$randomPhoneNumber': '555-0100',
  r'$randomUrl': 'https://example.com',
  r'$randomIP': '192.0.2.1',
  r'$randomAlphaNumeric': 'a',
  r'$randomWord': 'word',
  r'$randomWords': 'some words',
  r'$randomCity': 'Springfield',
  r'$randomCountry': 'Canada',
  r'$randomCountryCode': 'CA',
  r'$randomDateFuture':
      'Mon Jan 01 2029 10:00:00 GMT+0000 (Coordinated Universal Time)',
  r'$randomDatePast':
      'Mon Jan 01 2024 10:00:00 GMT+0000 (Coordinated Universal Time)',
  r'$randomDateRecent':
      'Mon Jan 01 2024 10:00:00 GMT+0000 (Coordinated Universal Time)',
};

/// Values of a Postman `variable` list by `key` (or `id`). Disabled
/// variables, secret ones and entries without a value are left unresolved.
Map<String, String> collectVariables(Object? list) {
  final values = <String, String>{};
  for (final variable in list is List ? list : const []) {
    if (variable is! Map ||
        variable['disabled'] == true ||
        variable['type'] == 'secret') {
      continue;
    }
    final name = variable['key'] ?? variable['id'];
    final value = variable['value'];
    if (name is String && value != null) {
      values[name] = value is String ? value : jsonEncode(value);
    }
  }
  return values;
}

/// The text Postman substitutes for `{{name}}` (nested references resolved),
/// or null when it is unresolved.
String? resolveVariable(
  String name,
  Map<String, String> variables, [
  int depth = 0,
]) {
  final value = variables[name] ?? _dynamicSamples[name];
  if (value == null || depth > 8) return value;
  return value.replaceAllMapped(
    variableReference,
    (m) => resolveVariable(m[1]!, variables, depth + 1) ?? m[0]!,
  );
}

/// [text] with every resolvable `{{name}}` substituted.
String substituteVariables(String text, Map<String, String> variables) =>
    text.replaceAllMapped(
      variableReference,
      (m) => resolveVariable(m[1]!, variables) ?? m[0]!,
    );
