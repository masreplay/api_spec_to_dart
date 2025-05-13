/// PaginationResponse_ItemResponse_
/// {
///     "properties": {
///         "items": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/app__generic_router__ItemResponse"
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
///     "title": "PaginationResponse[ItemResponse]"
/// }
library;

import 'exports.dart';
part 'pagination_response_item_response.freezed.dart';
part 'pagination_response_item_response.g.dart'; // PaginationResponseItemResponse

@freezed
abstract class PaginationResponseItemResponse
    with _$PaginationResponseItemResponse {
  const PaginationResponseItemResponse._();

  @generationJsonSerializable
  const factory PaginationResponseItemResponse({
    /// items
    @JsonKey(name: PaginationResponseItemResponse.itemsKey)
    required List<AppGenericRouterItemResponse> items,

    /// total
    @JsonKey(name: PaginationResponseItemResponse.totalKey) required int total,

    /// page
    @JsonKey(name: PaginationResponseItemResponse.pageKey) required int page,

    /// perPage
    @JsonKey(name: PaginationResponseItemResponse.perPageKey)
    required int perPage,

    /// totalPages
    @JsonKey(name: PaginationResponseItemResponse.totalPagesKey)
    required int totalPages,
  }) = _PaginationResponseItemResponse;

  factory PaginationResponseItemResponse.fromJson(Map<String, dynamic> json) =>
      _$PaginationResponseItemResponseFromJson(json);

  static const String itemsKey = "items";

  static const String totalKey = "total";

  static const String pageKey = "page";

  static const String perPageKey = "per_page";

  static const String totalPagesKey = "total_pages";
}
