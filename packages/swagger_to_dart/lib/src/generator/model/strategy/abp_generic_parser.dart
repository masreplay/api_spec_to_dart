import 'package:swagger_to_dart/src/generator/model/strategy/generic_parser_base.dart';

/// Parses ABP/.NET reflection names such as
/// ``PagedResultDto`1[[MyApp.BookDto, MyApp, Version=1.0.0.0]]``.
class AbpGenericParser implements GenericParserBase {
  AbpGenericParser._internal();

  static final AbpGenericParser instance = AbpGenericParser._internal();

  static final _arity = RegExp(r'`\d+');

  @override
  bool isFormat(String input) => _arity.hasMatch(input);

  @override
  String? toStandardFormat(String input) {
    if (!isFormat(input)) return null;

    final base = extractBaseClassName(input)!;
    final arguments = extractGenericArguments(input);
    if (arguments.isEmpty) return base;

    final converted = arguments.map((a) => toStandardFormat(a) ?? a);
    return '$base<${converted.join(', ')}>';
  }

  /// Type names of the generic arguments, without assembly qualifiers.
  /// Nested generic arguments are returned in ABP format.
  @override
  List<String> extractGenericArguments(String input) {
    if (!isFormat(input)) return [];

    final open = input.indexOf('[', input.indexOf('`'));
    if (open == -1) return [];

    final list = _insideBrackets(input, open);
    if (list == null) return [];

    return [
      for (final argument in _splitTopLevel(list))
        _splitTopLevel(_unwrap(argument.trim())).first.trim(),
    ];
  }

  @override
  String? extractBaseClassName(String input) {
    if (!isFormat(input)) return null;
    return input.substring(0, input.indexOf('`'));
  }

  /// Content between the `[` at [open] and its matching `]`.
  String? _insideBrackets(String input, int open) {
    var depth = 0;
    for (var i = open; i < input.length; i++) {
      if (input[i] == '[') depth++;
      if (input[i] == ']' && --depth == 0) {
        return input.substring(open + 1, i);
      }
    }
    return null;
  }

  List<String> _splitTopLevel(String input) {
    final parts = <String>[];
    var depth = 0;
    var start = 0;
    for (var i = 0; i < input.length; i++) {
      final char = input[i];
      if (char == '[') depth++;
      if (char == ']') depth--;
      if (char == ',' && depth == 0) {
        parts.add(input.substring(start, i));
        start = i + 1;
      }
    }
    return parts..add(input.substring(start));
  }

  String _unwrap(String argument) =>
      argument.startsWith('[') && argument.endsWith(']')
          ? argument.substring(1, argument.length - 1)
          : argument;
}
