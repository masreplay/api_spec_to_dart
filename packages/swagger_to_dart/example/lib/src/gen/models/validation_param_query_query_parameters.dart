/// ValidationParamQueryQueryParameters
/// {
///     "properties": {
///         "q": {
///             "anyOf": [
///                 {
///                     "type": "string",
///                     "maxLength": 50,
///                     "minLength": 3,
///                     "pattern": "^[a-zA-Z0-9_-]+$"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "description": "Search query string (alphanumeric with hyphens and underscores)",
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
///             "description": "Maximum number of items to return (1-100)",
///             "default": 10,
///             "title": "Limit"
///         }
///     },
///     "type": "object",
///     "required": []
/// }
library validation_param_query_query_parameters;

import 'exports.dart';
part 'validation_param_query_query_parameters.freezed.dart';
part 'validation_param_query_query_parameters.g.dart'; // ValidationParamQueryQueryParameters

@freezed
abstract class ValidationParamQueryQueryParameters
    with _$ValidationParamQueryQueryParameters {
  const ValidationParamQueryQueryParameters._();

  @jsonSerializable
  const factory ValidationParamQueryQueryParameters({
    /// q
    @JsonKey(name: ValidationParamQueryQueryParameters.qKey_) String? q,

    /// skip
    @Default(0)
    @JsonKey(name: ValidationParamQueryQueryParameters.skipKey_)
    int skip,

    /// limit
    @Default(10)
    @JsonKey(name: ValidationParamQueryQueryParameters.limitKey_)
    int limit,
  }) = _ValidationParamQueryQueryParameters;

  factory ValidationParamQueryQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$ValidationParamQueryQueryParametersFromJson(json);

  static const String qKey_ = r'q';

  static const String skipKey_ = r'skip';

  static const String limitKey_ = r'limit';
}
