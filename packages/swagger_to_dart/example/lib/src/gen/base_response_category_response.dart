/// BaseResponse_CategoryResponse_
/// {
///     "properties": {
///         "data": {
///             "$ref": "#/components/schemas/CategoryResponse"
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
///     "title": "BaseResponse[CategoryResponse]"
/// }
library base_response_category_response;

import 'exports.dart';
part 'base_response_category_response.freezed.dart';
part 'base_response_category_response.g.dart'; // BaseResponseCategoryResponse

@freezed
abstract class BaseResponseCategoryResponse
    with _$BaseResponseCategoryResponse {
  const BaseResponseCategoryResponse._();

  @generationJsonSerializable
  const factory BaseResponseCategoryResponse({
    /// data
    @JsonKey(name: BaseResponseCategoryResponse.dataKey)
    required CategoryResponse data,

    /// message
    @JsonKey(name: BaseResponseCategoryResponse.messageKey)
    required String message,

    /// code
    @JsonKey(name: BaseResponseCategoryResponse.codeKey) required int code,
  }) = _BaseResponseCategoryResponse;

  factory BaseResponseCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseCategoryResponseFromJson(json);

  static const String dataKey = "data";

  static const String messageKey = "message";

  static const String codeKey = "code";
}
