// app__generic_router__ItemResponse
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
part 'app_generic_router_item_response.freezed.dart';
part 'app_generic_router_item_response.g.dart'; // AppGenericRouterItemResponse

@freezed
abstract class AppGenericRouterItemResponse
    with _$AppGenericRouterItemResponse {
  const AppGenericRouterItemResponse._();

  @generationJsonSerializable
  const factory AppGenericRouterItemResponse({
    /// id
    @JsonKey(name: AppGenericRouterItemResponse.idKey) required int id,

    /// name
    @JsonKey(name: AppGenericRouterItemResponse.nameKey) required String name,
  }) = _AppGenericRouterItemResponse;

  factory AppGenericRouterItemResponse.fromJson(Map<String, dynamic> json) =>
      _$AppGenericRouterItemResponseFromJson(json);

  static const String idKey = "id";

  static const String nameKey = "name";
}
