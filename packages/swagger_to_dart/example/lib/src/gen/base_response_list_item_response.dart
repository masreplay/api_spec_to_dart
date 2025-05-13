// BaseResponse_list_ItemResponse__
// {
//     "properties": {
//         "data": {
//             "type": "array",
//             "items": {
//                 "$ref": "#/components/schemas/app__generic_router__ItemResponse"
//             },
//             "title": "Data"
//         },
//         "message": {
//             "type": "string",
//             "title": "Message"
//         },
//         "code": {
//             "type": "integer",
//             "title": "Code"
//         }
//     },
//     "type": "object",
//     "required": [
//         "data",
//         "message",
//         "code"
//     ],
//     "title": "BaseResponse[list[ItemResponse]]"
// }

library base_response_list_item_response;

import 'exports.dart';
part 'base_response_list_item_response.freezed.dart';
part 'base_response_list_item_response.g.dart'; // BaseResponseListItemResponse

@freezed
abstract class BaseResponseListItemResponse
    with _$BaseResponseListItemResponse {
  const BaseResponseListItemResponse._();

  const factory BaseResponseListItemResponse({
    /// data
    @JsonKey(name: BaseResponseListItemResponse.dataKey)
    required List<AppGenericRouterItemResponse> data,

    /// message
    @JsonKey(name: BaseResponseListItemResponse.messageKey)
    required String message,

    /// code
    @JsonKey(name: BaseResponseListItemResponse.codeKey) required int code,
  }) = _BaseResponseListItemResponse;

  factory BaseResponseListItemResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseListItemResponseFromJson(json);

  static const String dataKey = "data";

  static const String messageKey = "message";

  static const String codeKey = "code";
}
