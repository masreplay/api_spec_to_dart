/// app__router__items_router__ItemResponse
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
library app_router_items_router_item_response;

import 'exports.dart';
part 'app_router_items_router_item_response.freezed.dart';
part 'app_router_items_router_item_response.g.dart'; // AppRouterItemsRouterItemResponse

@freezed
abstract class AppRouterItemsRouterItemResponse
    with _$AppRouterItemsRouterItemResponse {
  const AppRouterItemsRouterItemResponse._();

  @jsonSerializable
  const factory AppRouterItemsRouterItemResponse({
    /// id
    @JsonKey(name: AppRouterItemsRouterItemResponse.idKey) required int id,

    /// name
    @JsonKey(name: AppRouterItemsRouterItemResponse.nameKey)
    required String name,

    /// description
    @JsonKey(name: AppRouterItemsRouterItemResponse.descriptionKey)
    required String? description,

    /// price
    @JsonKey(name: AppRouterItemsRouterItemResponse.priceKey)
    required double price,

    /// tax
    @JsonKey(name: AppRouterItemsRouterItemResponse.taxKey)
    required double? tax,
  }) = _AppRouterItemsRouterItemResponse;

  factory AppRouterItemsRouterItemResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AppRouterItemsRouterItemResponseFromJson(json);

  static const String idKey = "id";

  static const String nameKey = "name";

  static const String descriptionKey = "description";

  static const String priceKey = "price";

  static const String taxKey = "tax";
}
