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

library item_response;

import 'exports.dart';
part 'item_response.freezed.dart';
part 'item_response.g.dart'; // ItemResponse

@freezed
abstract class ItemResponse with _$ItemResponse {
  const ItemResponse._();

  const factory ItemResponse({
    /// id
    @JsonKey(name: ItemResponse.idKey) required int id,

    /// name
    @JsonKey(name: ItemResponse.nameKey) required String name,

    /// description
    @JsonKey(name: ItemResponse.descriptionKey) required String? description,

    /// price
    @JsonKey(name: ItemResponse.priceKey) required double price,

    /// tax
    @JsonKey(name: ItemResponse.taxKey) required double? tax,
  }) = _ItemResponse;

  factory ItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemResponseFromJson(json);

  static const String idKey = "id";

  static const String nameKey = "name";

  static const String descriptionKey = "description";

  static const String priceKey = "price";

  static const String taxKey = "tax";
}
