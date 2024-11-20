class Recase {
  const Recase._internal();

  static const Recase _instance = const Recase._internal();

  static Recase get instance => _instance;

  String camelCase(String input) {
    return input.splitMapJoin(
      RegExp(r'[^a-zA-Z0-9]+'),
      onMatch: (m) => '',
      onNonMatch: (m) => m.toLowerCase(),
    );
  }

  String pascalCase(String input) {
    return input.splitMapJoin(
      RegExp(r'[^a-zA-Z0-9]+'),
      onMatch: (m) => '',
      onNonMatch: (m) => m[0].toUpperCase() + m.substring(1).toLowerCase(),
    );
  }

  String snakeCase(String input) {
    return input.splitMapJoin(
      RegExp(r'[^a-zA-Z0-9]+'),
      onMatch: (m) => '_',
      onNonMatch: (m) => m.toLowerCase(),
    );
  }
}
