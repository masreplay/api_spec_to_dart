/// GenericGetItemsQueryParameters
///
/// ```json
/// {
///     "properties": {
///         "page": {
///             "type": "integer",
///             "default": 1,
///             "title": "Page"
///         },
///         "per_page": {
///             "type": "integer",
///             "default": 10,
///             "title": "Per Page"
///         }
///     },
///     "type": "object",
///     "required": []
/// }
/// ```
library;

import 'exports.dart';
part 'generic_get_items_query_parameters.freezed.dart';
part 'generic_get_items_query_parameters.g.dart';

@freezed
abstract class GenericGetItemsQueryParameters
    with _$GenericGetItemsQueryParameters {
  const GenericGetItemsQueryParameters._();

  @jsonSerializable
  const factory GenericGetItemsQueryParameters({
    /// page
    @Default(1)
    @JsonKey(name: GenericGetItemsQueryParameters.pageKey_)
    int page,

    /// perPage
    @Default(10)
    @JsonKey(name: GenericGetItemsQueryParameters.perPageKey_)
    int perPage,
  }) = _GenericGetItemsQueryParameters;

  factory GenericGetItemsQueryParameters.fromJson(Map<String, dynamic> json) =>
      _$GenericGetItemsQueryParametersFromJson(json);

  static const String pageKey_ = 'page';

  static const String perPageKey_ = 'per_page';
}
