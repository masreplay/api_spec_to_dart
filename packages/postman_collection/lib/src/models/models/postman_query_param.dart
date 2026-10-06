/// PostmanQueryParam
///
/// ```json
/// {
///     "properties": {
///         "key": {
///             "type": "string",
///             "nullable": true
///         },
///         "value": {
///             "type": "string",
///             "nullable": true
///         },
///         "disabled": {
///             "type": "boolean",
///             "description": "If set to true, the current query parameter will not be sent with the request.",
///             "default": false
///         },
///         "description": {
///             "$ref": "#/components/schemas/description"
///         }
///     },
///     "type": "object",
///     "title": "QueryParam"
/// }
/// ```
library;

import 'exports.dart';
part 'postman_query_param.freezed.dart';
part 'postman_query_param.g.dart';

@freezed
abstract class PostmanQueryParam with _$PostmanQueryParam {
  const PostmanQueryParam._();

  @jsonSerializable
  const factory PostmanQueryParam({
    /// key
    @JsonKey(name: PostmanQueryParam.keyKey_) String? key,

    /// value
    @JsonKey(name: PostmanQueryParam.valueKey_) String? value,

    /// disabled
    @Default(false)
    @JsonKey(name: PostmanQueryParam.disabledKey_)
    bool disabled,

    /// description
    @JsonKey(name: PostmanQueryParam.descriptionKey_)
    PostmanDescription? description,
  }) = _PostmanQueryParam;

  factory PostmanQueryParam.fromJson(Map<String, dynamic> json) =>
      _$PostmanQueryParamFromJson(json);

  static const String keyKey_ = 'key';

  static const String valueKey_ = 'value';

  static const String disabledKey_ = 'disabled';

  static const String descriptionKey_ = 'description';
}
