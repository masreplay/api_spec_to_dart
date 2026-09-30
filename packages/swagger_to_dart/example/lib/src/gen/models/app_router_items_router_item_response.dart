/// app__router__items_router__ItemResponse
///
/// ```json
/// {
///     "properties": {
///         "id": {
///             "type": "integer",
///             "title": "Id"
///         },
///         "name": {
///             "type": "string",
///             "title": "Name"
///         },
///         "description": {
///             "anyOf": [
///                 {
///                     "type": "string"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "title": "Description"
///         },
///         "price": {
///             "type": "number",
///             "title": "Price"
///         },
///         "tax": {
///             "anyOf": [
///                 {
///                     "type": "number"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "title": "Tax"
///         }
///     },
///     "type": "object",
///     "required": [
///         "id",
///         "name",
///         "description",
///         "price"
///     ],
///     "title": "ItemResponse"
/// }
/// ```
library;

import 'exports.dart';
part 'app_router_items_router_item_response.freezed.dart';
part 'app_router_items_router_item_response.g.dart';

@freezed
abstract class AppRouterItemsRouterItemResponse
    with _$AppRouterItemsRouterItemResponse {
  const AppRouterItemsRouterItemResponse._();

  @jsonSerializable
  const factory AppRouterItemsRouterItemResponse({
    /// id
    @JsonKey(name: AppRouterItemsRouterItemResponse.idKey_) required int id,

    /// name
    @JsonKey(name: AppRouterItemsRouterItemResponse.nameKey_)
    required String name,

    /// description
    @JsonKey(name: AppRouterItemsRouterItemResponse.descriptionKey_)
    required String? description,

    /// price
    @JsonKey(name: AppRouterItemsRouterItemResponse.priceKey_)
    required double price,

    /// tax
    @JsonKey(name: AppRouterItemsRouterItemResponse.taxKey_) double? tax,
  }) = _AppRouterItemsRouterItemResponse;

  factory AppRouterItemsRouterItemResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AppRouterItemsRouterItemResponseFromJson(json);

  static const String idKey_ = 'id';

  static const String nameKey_ = 'name';

  static const String descriptionKey_ = 'description';

  static const String priceKey_ = 'price';

  static const String taxKey_ = 'tax';
}
