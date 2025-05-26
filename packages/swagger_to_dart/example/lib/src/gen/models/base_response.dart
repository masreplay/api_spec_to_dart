/// BaseResponse_CategoryResponse_
/// BaseResponse<T>
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
library;

import 'exports.dart';
part 'base_response.freezed.dart';
part 'base_response.g.dart'; // BaseResponse<T>

@Freezed(genericArgumentFactories: true)
abstract class BaseResponse<T> with _$BaseResponse<T> {
  const BaseResponse._();

  @JsonSerializable(
    converters: jsonSerializableConverters,
    genericArgumentFactories: true,
  )
  const factory BaseResponse({
    /// data
    @JsonKey(name: BaseResponse.dataKey) required CategoryResponse data,

    /// message
    @JsonKey(name: BaseResponse.messageKey) required String message,

    /// code
    @JsonKey(name: BaseResponse.codeKey) required int code,
  }) = _BaseResponse<T>;

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$BaseResponseFromJson(json, fromJsonT);

  static const String dataKey = "data";

  static const String messageKey = "message";

  static const String codeKey = "code";
}
