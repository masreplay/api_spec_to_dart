/// GenericGetItemsQueryParameters
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
library generic_get_items_query_parameters;

import 'exports.dart';
part 'generic_get_items_query_parameters.freezed.dart';
part 'generic_get_items_query_parameters.g.dart'; // GenericGetItemsQueryParameters

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

  static const String pageKey_ = r'page';

  static const String perPageKey_ = r'per_page';
}
