/// BaseResponse_CategoryResponse_
/// BaseResponse
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
library base_response;

import 'exports.dart';
part 'base_response.freezed.dart';
part 'base_response.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class BaseResponse<T> with _$BaseResponse<T> {
  const BaseResponse._();

  @JsonSerializable(
    converters: jsonSerializableConverters,
    genericArgumentFactories: true,
    createFieldMap: true,
  )
  const factory BaseResponse({
    /// data
    @JsonKey(name: BaseResponse.dataKey_) required CategoryResponse data,

    /// message
    @JsonKey(name: BaseResponse.messageKey_) required String message,

    /// code
    @JsonKey(name: BaseResponse.codeKey_) required int code,
  }) = _BaseResponse<T>;

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$BaseResponseFromJson<T>(json, fromJsonT);

  static const String dataKey_ = r'data';

  static const String messageKey_ = r'message';

  static const String codeKey_ = r'code';
}
