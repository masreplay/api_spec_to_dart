/// BaseResponse_CategoryResponse_
///
/// ```json
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
/// ```
library;

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
    explicitToJson: true,
  )
  const factory BaseResponse({
    /// data
    @JsonKey(name: BaseResponse.dataKey_) required T data,

    /// message
    @JsonKey(name: BaseResponse.messageKey_) required String message,

    /// code
    @JsonKey(name: BaseResponse.codeKey_) required int code,
  }) = _BaseResponse<T>;

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$BaseResponseFromJson<T>(json, fromJsonT);

  static const String dataKey_ = 'data';

  static const String messageKey_ = 'message';

  static const String codeKey_ = 'code';
}
