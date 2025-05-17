/// PaginationResponse_CategoryResponse_
/// {
///     "properties": {
///         "items": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/CategoryResponse"
///             },
///             "title": "Items"
///         },
///         "total": {
///             "type": "integer",
///             "title": "Total"
///         },
///         "page": {
///             "type": "integer",
///             "title": "Page"
///         },
///         "per_page": {
///             "type": "integer",
///             "title": "Per Page"
///         },
///         "total_pages": {
///             "type": "integer",
///             "title": "Total Pages"
///         }
///     },
///     "type": "object",
///     "required": [
///         "items",
///         "total",
///         "page",
///         "per_page",
///         "total_pages"
///     ],
///     "title": "PaginationResponse[CategoryResponse]"
/// }
library;

import 'exports.dart';
part 'pagination_response_category_response.freezed.dart';
part 'pagination_response_category_response.g.dart'; // PaginationResponseCategoryResponse

@freezed
abstract class PaginationResponseCategoryResponse
    with _$PaginationResponseCategoryResponse {
  const PaginationResponseCategoryResponse._();

  @generationJsonSerializable
  const factory PaginationResponseCategoryResponse({
    /// items
    @JsonKey(name: PaginationResponseCategoryResponse.itemsKey)
    required List<CategoryResponse> items,

    /// total
    @JsonKey(name: PaginationResponseCategoryResponse.totalKey)
    required int total,

    /// page
    @JsonKey(name: PaginationResponseCategoryResponse.pageKey)
    required int page,

    /// perPage
    @JsonKey(name: PaginationResponseCategoryResponse.perPageKey)
    required int perPage,

    /// totalPages
    @JsonKey(name: PaginationResponseCategoryResponse.totalPagesKey)
    required int totalPages,
  }) = _PaginationResponseCategoryResponse;

  factory PaginationResponseCategoryResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PaginationResponseCategoryResponseFromJson(json);

  static const String itemsKey = "items";

  static const String totalKey = "total";

  static const String pageKey = "page";

  static const String perPageKey = "per_page";

  static const String totalPagesKey = "total_pages";
}
