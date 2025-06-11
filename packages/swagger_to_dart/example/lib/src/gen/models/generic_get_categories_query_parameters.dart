/// GenericGetCategoriesQueryParameters
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
part 'generic_get_categories_query_parameters.freezed.dart';
part 'generic_get_categories_query_parameters.g.dart'; // GenericGetCategoriesQueryParameters

@freezed
abstract class GenericGetCategoriesQueryParameters
    with _$GenericGetCategoriesQueryParameters {
  const GenericGetCategoriesQueryParameters._();

  @jsonSerializable
  const factory GenericGetCategoriesQueryParameters({
    /// page
    @Default(1)
    @JsonKey(name: GenericGetCategoriesQueryParameters.pageKey)
    int page,

    /// perPage
    @Default(10)
    @JsonKey(name: GenericGetCategoriesQueryParameters.perPageKey)
    int perPage,
  }) = _GenericGetCategoriesQueryParameters;

  factory GenericGetCategoriesQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GenericGetCategoriesQueryParametersFromJson(json);

  static const String pageKey = r'page';

  static const String perPageKey = r'per_page';
}
