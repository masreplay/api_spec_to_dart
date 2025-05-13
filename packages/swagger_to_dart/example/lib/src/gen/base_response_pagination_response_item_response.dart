// BaseResponse_PaginationResponse_ItemResponse__
// {
//     "properties": {
//         "data": {
//             "$ref": "#/components/schemas/PaginationResponse_ItemResponse_"
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
//     "title": "BaseResponse[PaginationResponse[ItemResponse]]"
// }

library base_response_pagination_response_item_response;

import 'exports.dart';
part 'base_response_pagination_response_item_response.freezed.dart';
part 'base_response_pagination_response_item_response.g.dart'; // BaseResponsePaginationResponseItemResponse

@freezed
abstract class BaseResponsePaginationResponseItemResponse
    with _$BaseResponsePaginationResponseItemResponse {
  const BaseResponsePaginationResponseItemResponse._();

  const factory BaseResponsePaginationResponseItemResponse({
    /// data
    @JsonKey(name: BaseResponsePaginationResponseItemResponse.dataKey)
    required PaginationResponseItemResponse data,

    /// message
    @JsonKey(name: BaseResponsePaginationResponseItemResponse.messageKey)
    required String message,

    /// code
    @JsonKey(name: BaseResponsePaginationResponseItemResponse.codeKey)
    required int code,
  }) = _BaseResponsePaginationResponseItemResponse;

  factory BaseResponsePaginationResponseItemResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$BaseResponsePaginationResponseItemResponseFromJson(json);

  static const String dataKey = "data";

  static const String messageKey = "message";

  static const String codeKey = "code";
}
