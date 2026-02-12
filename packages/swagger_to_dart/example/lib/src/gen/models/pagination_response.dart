/// PaginationResponse_CategoryResponse_
/// PaginationResponse
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
library pagination_response;

import 'exports.dart';
part 'pagination_response.freezed.dart';
part 'pagination_response.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class PaginationResponse<T> with _$PaginationResponse<T> {
  const PaginationResponse._();

  @JsonSerializable(
    converters: jsonSerializableConverters,
    genericArgumentFactories: true,
    createFieldMap: true,
  )
  const factory PaginationResponse({
    /// items
    @JsonKey(name: PaginationResponse.itemsKey_)
    required List<CategoryResponse> items,

    /// total
    @JsonKey(name: PaginationResponse.totalKey_) required int total,

    /// page
    @JsonKey(name: PaginationResponse.pageKey_) required int page,

    /// perPage
    @JsonKey(name: PaginationResponse.perPageKey_) required int perPage,

    /// totalPages
    @JsonKey(name: PaginationResponse.totalPagesKey_) required int totalPages,
  }) = _PaginationResponse<T>;

  factory PaginationResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$PaginationResponseFromJson<T>(json, fromJsonT);

  static const String itemsKey_ = r'items';

  static const String totalKey_ = r'total';

  static const String pageKey_ = r'page';

  static const String perPageKey_ = r'per_page';

  static const String totalPagesKey_ = r'total_pages';
}
