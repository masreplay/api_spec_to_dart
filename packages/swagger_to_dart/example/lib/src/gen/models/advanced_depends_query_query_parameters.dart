/// AdvancedDependsQueryQueryParameters
/// {
///     "properties": {
///         "q": {
///             "anyOf": [
///                 {
///                     "type": "string"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "description": "Optional search string",
///             "title": "Q"
///         },
///         "skip": {
///             "type": "integer",
///             "description": "Number of items to skip",
///             "default": 0,
///             "title": "Skip"
///         },
///         "limit": {
///             "type": "integer",
///             "description": "Max items to return",
///             "default": 100,
///             "title": "Limit"
///         }
///     },
///     "type": "object",
///     "required": []
/// }
library advanced_depends_query_query_parameters;

import 'exports.dart';
part 'advanced_depends_query_query_parameters.freezed.dart';
part 'advanced_depends_query_query_parameters.g.dart'; // AdvancedDependsQueryQueryParameters

@freezed
abstract class AdvancedDependsQueryQueryParameters
    with _$AdvancedDependsQueryQueryParameters {
  const AdvancedDependsQueryQueryParameters._();

  @jsonSerializable
  const factory AdvancedDependsQueryQueryParameters({
    /// q
    @JsonKey(name: AdvancedDependsQueryQueryParameters.qKey_) String? q,

    /// skip
    @Default(0)
    @JsonKey(name: AdvancedDependsQueryQueryParameters.skipKey_)
    int skip,

    /// limit
    @Default(100)
    @JsonKey(name: AdvancedDependsQueryQueryParameters.limitKey_)
    int limit,
  }) = _AdvancedDependsQueryQueryParameters;

  factory AdvancedDependsQueryQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$AdvancedDependsQueryQueryParametersFromJson(json);

  static const String qKey_ = r'q';

  static const String skipKey_ = r'skip';

  static const String limitKey_ = r'limit';
}
