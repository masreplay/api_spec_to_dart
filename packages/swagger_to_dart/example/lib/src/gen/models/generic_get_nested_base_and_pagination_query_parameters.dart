/// GenericGetNestedBaseAndPaginationQueryParameters
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
///     "type": "object"
/// }
library;

import 'exports.dart';
part 'generic_get_nested_base_and_pagination_query_parameters.freezed.dart';
part 'generic_get_nested_base_and_pagination_query_parameters.g.dart'; // GenericGetNestedBaseAndPaginationQueryParameters

@freezed
abstract class GenericGetNestedBaseAndPaginationQueryParameters
    with _$GenericGetNestedBaseAndPaginationQueryParameters {
  const GenericGetNestedBaseAndPaginationQueryParameters._();

  @jsonSerializable
  const factory GenericGetNestedBaseAndPaginationQueryParameters({
    /// page
    @Default(1)
    @JsonKey(name: GenericGetNestedBaseAndPaginationQueryParameters.pageKey)
    int page,

    /// perPage
    @Default(10)
    @JsonKey(name: GenericGetNestedBaseAndPaginationQueryParameters.perPageKey)
    int perPage,
  }) = _GenericGetNestedBaseAndPaginationQueryParameters;

  factory GenericGetNestedBaseAndPaginationQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$GenericGetNestedBaseAndPaginationQueryParametersFromJson(json);

  static const String pageKey = r'page';

  static const String perPageKey = r'per_page';
}
