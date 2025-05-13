// ItemResponse-Input
// {
//     "properties": {
//         "id": {
//             "type": "integer",
//             "title": "Id"
//         },
//         "name": {
//             "type": "string",
//             "title": "Name"
//         }
//     },
//     "type": "object",
//     "required": [
//         "id",
//         "name"
//     ],
//     "title": "ItemResponse"
// }

library;

import 'exports.dart';
part 'item_response_input.freezed.dart';
part 'item_response_input.g.dart'; // ItemResponseInput

@freezed
abstract class ItemResponseInput with _$ItemResponseInput {
  const ItemResponseInput._();

  @generationJsonSerializable
  const factory ItemResponseInput({
    /// id
    @JsonKey(name: ItemResponseInput.idKey) required int id,

    /// name
    @JsonKey(name: ItemResponseInput.nameKey) required String name,
  }) = _ItemResponseInput;

  factory ItemResponseInput.fromJson(Map<String, dynamic> json) =>
      _$ItemResponseInputFromJson(json);

  static const String idKey = "id";

  static const String nameKey = "name";
}
