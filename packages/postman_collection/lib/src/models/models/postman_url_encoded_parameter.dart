/// PostmanUrlEncodedParameter
///
/// ```json
/// {
///     "properties": {
///         "key": {
///             "type": "string"
///         },
///         "value": {
///             "type": "string"
///         },
///         "disabled": {
///             "type": "boolean",
///             "default": false
///         },
///         "description": {
///             "$ref": "#/components/schemas/description"
///         }
///     },
///     "type": "object",
///     "required": [
///         "key"
///     ],
///     "title": "UrlEncodedParameter"
/// }
/// ```
library;

import 'exports.dart';
part 'postman_url_encoded_parameter.freezed.dart';
part 'postman_url_encoded_parameter.g.dart';

@freezed
abstract class PostmanUrlEncodedParameter with _$PostmanUrlEncodedParameter {
  const PostmanUrlEncodedParameter._();

  @jsonSerializable
  const factory PostmanUrlEncodedParameter({
    /// key
    @JsonKey(name: PostmanUrlEncodedParameter.keyKey_) required String key,

    /// value
    @JsonKey(name: PostmanUrlEncodedParameter.valueKey_) String? value,

    /// disabled
    @Default(false)
    @JsonKey(name: PostmanUrlEncodedParameter.disabledKey_)
    bool disabled,

    /// description
    @JsonKey(name: PostmanUrlEncodedParameter.descriptionKey_)
    PostmanDescription? description,
  }) = _PostmanUrlEncodedParameter;

  factory PostmanUrlEncodedParameter.fromJson(Map<String, dynamic> json) =>
      _$PostmanUrlEncodedParameterFromJson(json);

  static const String keyKey_ = 'key';

  static const String valueKey_ = 'value';

  static const String disabledKey_ = 'disabled';

  static const String descriptionKey_ = 'description';
}
