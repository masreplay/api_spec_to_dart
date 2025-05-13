// app__items_router__ItemResponse
// {
//     "properties": {
//         "id": {
//             "type": "integer",
//             "title": "Id"
//         },
//         "name": {
//             "type": "string",
//             "title": "Name"
//         },
//         "description": {
//             "anyOf": [
//                 {
//                     "type": "string"
//                 },
//                 {
//                     "type": "null"
//                 }
//             ],
//             "title": "Description"
//         },
//         "price": {
//             "type": "number",
//             "title": "Price"
//         },
//         "tax": {
//             "anyOf": [
//                 {
//                     "type": "number"
//                 },
//                 {
//                     "type": "null"
//                 }
//             ],
//             "title": "Tax"
//         }
//     },
//     "type": "object",
//     "required": [
//         "id",
//         "name",
//         "description",
//         "price"
//     ],
//     "title": "ItemResponse"
// }

library;

import 'exports.dart';
part 'app_items_router_item_response.freezed.dart';
part 'app_items_router_item_response.g.dart'; // AppItemsRouterItemResponse

@freezed
abstract class AppItemsRouterItemResponse with _$AppItemsRouterItemResponse {
  const AppItemsRouterItemResponse._();

  const factory AppItemsRouterItemResponse({
    /// id
    @JsonKey(name: AppItemsRouterItemResponse.idKey) required int id,

    /// name
    @JsonKey(name: AppItemsRouterItemResponse.nameKey) required String name,

    /// description
    @JsonKey(name: AppItemsRouterItemResponse.descriptionKey)
    required String? description,

    /// price
    @JsonKey(name: AppItemsRouterItemResponse.priceKey) required double price,

    /// tax
    @JsonKey(name: AppItemsRouterItemResponse.taxKey) required double? tax,
  }) = _AppItemsRouterItemResponse;

  factory AppItemsRouterItemResponse.fromJson(Map<String, dynamic> json) =>
      _$AppItemsRouterItemResponseFromJson(json);

  static const String idKey = "id";

  static const String nameKey = "name";

  static const String descriptionKey = "description";

  static const String priceKey = "price";

  static const String taxKey = "tax";
}
