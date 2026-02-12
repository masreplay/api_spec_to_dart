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
///     "type": "object",
///     "required": []
/// }
library generic_get_categories_query_parameters;

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
    @JsonKey(name: GenericGetCategoriesQueryParameters.pageKey_)
    int page,

    /// perPage
    @Default(10)
    @JsonKey(name: GenericGetCategoriesQueryParameters.perPageKey_)
    int perPage,
  }) = _GenericGetCategoriesQueryParameters;

  factory GenericGetCategoriesQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$GenericGetCategoriesQueryParametersFromJson(json);

  static const String pageKey_ = r'page';

  static const String perPageKey_ = r'per_page';
}
