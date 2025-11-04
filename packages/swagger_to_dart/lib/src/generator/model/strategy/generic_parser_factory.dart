import 'package:swagger_to_dart/src/config/swagger_to_dart_yaml.dart';
import 'package:swagger_to_dart/src/generator/model/strategy/abp_generic_parser.dart';
import 'package:swagger_to_dart/src/generator/model/strategy/dotnet_generic_parser.dart';
import 'package:swagger_to_dart/src/generator/model/strategy/fastapi_generic_parser.dart';
import 'package:swagger_to_dart/src/generator/model/strategy/generic_parser_base.dart';

/// Factory for getting the appropriate generic parser based on generation source
/// or by detecting the format of a title string.
class GenericParserFactory {
  GenericParserFactory._internal();

  static GenericParserFactory get instance => GenericParserFactory._internal();

  /// Gets the parser for the given generation source.
  GenericParserBase? getParserForSource(GenerationSource source) {
    return switch (source) {
      GenerationSource.abpIO => AbpGenericParser.instance,
      GenerationSource.fastAPI => FastApiGenericParser.instance,
      GenerationSource.dotnet => DotNetGenericParser.instance,
    };
  }

  /// Detects and returns the appropriate parser for the given title string.
  /// Returns null if no parser matches.
  GenericParserBase? detectParser(String title) {
    // Check in order: ABP, FastAPI, .NET
    if (AbpGenericParser.instance.isFormat(title)) {
      return AbpGenericParser.instance;
    }
    if (FastApiGenericParser.instance.isFormat(title)) {
      return FastApiGenericParser.instance;
    }
    if (DotNetGenericParser.instance.isFormat(title)) {
      return DotNetGenericParser.instance;
    }
    return null;
  }

  /// Gets the parser for the given generation source, or detects it from the title.
  /// Returns null if neither method finds a matching parser.
  GenericParserBase? getParser({
    required GenerationSource? source,
    required String title,
  }) {
    // First try to get parser from source
    if (source != null) {
      final sourceParser = getParserForSource(source);
      if (sourceParser != null && sourceParser.isFormat(title)) {
        return sourceParser;
      }
    }

    // Fall back to detection
    return detectParser(title);
  }
}
