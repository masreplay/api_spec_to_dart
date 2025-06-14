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
library;

import 'exports.dart';
part 'pagination_response.freezed.dart';
part 'pagination_response.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class PaginationResponse<T> with _$PaginationResponse<T> {
  const PaginationResponse._();

  @JsonSerializable(
    converters: jsonSerializableConverters,
    genericArgumentFactories: true,
  )
  const factory PaginationResponse({
    /// items
    @JsonKey(name: PaginationResponse.itemsKey) required List<T> items,

    /// total
    @JsonKey(name: PaginationResponse.totalKey) required int total,

    /// page
    @JsonKey(name: PaginationResponse.pageKey) required int page,

    /// perPage
    @JsonKey(name: PaginationResponse.perPageKey) required int perPage,

    /// totalPages
    @JsonKey(name: PaginationResponse.totalPagesKey) required int totalPages,
  }) = _PaginationResponse<T>;

  factory PaginationResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PaginationResponseFromJson<T>(json, fromJsonT);

  static const String itemsKey = r'items';

  static const String totalKey = r'total';

  static const String pageKey = r'page';

  static const String perPageKey = r'per_page';

  static const String totalPagesKey = r'total_pages';
}
