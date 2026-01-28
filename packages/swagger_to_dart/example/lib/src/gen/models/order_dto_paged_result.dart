/// OrderDtoPagedResult
/// {
///     "properties": {
///         "items": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/OrderDto"
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
library order_dto_paged_result;

import 'exports.dart';
part 'order_dto_paged_result.freezed.dart';
part 'order_dto_paged_result.g.dart'; // OrderDtoPagedResult

@freezed
abstract class OrderDtoPagedResult with _$OrderDtoPagedResult {
  const OrderDtoPagedResult._();

  @jsonSerializable
  const factory OrderDtoPagedResult({
    /// items
    @JsonKey(name: OrderDtoPagedResult.itemsKey_) required List<OrderDto> items,

    /// nextPageToken
    @JsonKey(name: OrderDtoPagedResult.nextPageTokenKey_) String? nextPageToken,
  }) = _OrderDtoPagedResult;

  factory OrderDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoPagedResultFromJson(json);

  static const String itemsKey_ = r'items';

  static const String nextPageTokenKey_ = r'next_page_token';
}
