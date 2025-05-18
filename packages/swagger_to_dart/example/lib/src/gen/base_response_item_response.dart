/// BaseResponse_ItemResponse_
/// {
///     "properties": {
///         "data": {
///             "$ref": "#/components/schemas/app__router__generic_router__ItemResponse"
///         },
///         "message": {
///             "type": "string",
///             "title": "Message"
///         },
///         "code": {
///             "type": "integer",
///             "title": "Code"
///         }
///     },
///     "type": "object",
///     "required": [
///         "data",
///         "message",
///         "code"
///     ],
///     "title": "BaseResponse[ItemResponse]"
/// }
library;

import 'exports.dart';
part 'base_response_item_response.freezed.dart';
part 'base_response_item_response.g.dart'; // BaseResponseItemResponse

@freezed
abstract class BaseResponseItemResponse with _$BaseResponseItemResponse {
  const BaseResponseItemResponse._();

  @generationJsonSerializable
  const factory BaseResponseItemResponse({
    /// data
    @JsonKey(name: BaseResponseItemResponse.dataKey)
    required AppRouterGenericRouterItemResponse data,

    /// message
    @JsonKey(name: BaseResponseItemResponse.messageKey) required String message,

    /// code
    @JsonKey(name: BaseResponseItemResponse.codeKey) required int code,
  }) = _BaseResponseItemResponse;

  factory BaseResponseItemResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseItemResponseFromJson(json);

  static const String dataKey = "data";

  static const String messageKey = "message";

  static const String codeKey = "code";
}
