/// Base interface for generic parsers that handle different formats
/// (ABP, FastAPI, .NET) of generic type declarations.
abstract class GenericParserBase {
  /// Checks if the input string matches this parser's format.
  bool isFormat(String input);

  /// Converts the input to a standard generic format (e.g., "ClassName<T1, T2>").
  /// Returns null if the input doesn't match this parser's format.
  String? toStandardFormat(String input);

  /// Extracts the base class name from a generic type declaration.
  /// Returns null if the input doesn't match this parser's format.
  String? extractBaseClassName(String input);

  /// Extracts the generic type arguments from a generic type declaration.
  /// Returns an empty list if the input doesn't match this parser's format.
  List<String> extractGenericArguments(String input);
}
