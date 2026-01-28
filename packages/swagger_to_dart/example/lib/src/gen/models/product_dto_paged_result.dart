/// ProductDtoPagedResult
/// {
///     "properties": {
///         "items": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/ProductDto"
///             }
///         },
///         "next_page_token": {
///             "type": "string",
///             "nullable": true
///         }
///     },
///     "type": "object",
///     "required": [
///         "items"
///     ],
///     "additionalProperties": false
/// }
library product_dto_paged_result;

import 'exports.dart';
part 'product_dto_paged_result.freezed.dart';
part 'product_dto_paged_result.g.dart'; // ProductDtoPagedResult

@freezed
abstract class ProductDtoPagedResult with _$ProductDtoPagedResult {
  const ProductDtoPagedResult._();

  @jsonSerializable
  const factory ProductDtoPagedResult({
    /// items
    @JsonKey(name: ProductDtoPagedResult.itemsKey_)
    required List<ProductDto> items,

    /// nextPageToken
    @JsonKey(name: ProductDtoPagedResult.nextPageTokenKey_)
    String? nextPageToken,
  }) = _ProductDtoPagedResult;

  factory ProductDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoPagedResultFromJson(json);

  static const String itemsKey_ = r'items';

  static const String nextPageTokenKey_ = r'next_page_token';
}
