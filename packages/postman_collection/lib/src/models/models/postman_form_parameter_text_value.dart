/// PostmanFormParameterTextValue
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
///             "description": "When set to true, prevents this form data entity from being sent.",
///             "default": false
///         },
///         "type": {
///             "type": "string",
///             "const": "text"
///         },
///         "contentType": {
///             "type": "string",
///             "description": "Override Content-Type header of this form data entity."
///         },
///         "description": {
///             "$ref": "#/components/schemas/description"
///         }
///     },
///     "required": [
///         "key"
///     ]
/// }
/// ```
library;

import 'exports.dart';
part 'postman_form_parameter_text_value.freezed.dart';
part 'postman_form_parameter_text_value.g.dart';

@freezed
abstract class PostmanFormParameterTextValue
    with _$PostmanFormParameterTextValue {
  const PostmanFormParameterTextValue._();

  @jsonSerializable
  const factory PostmanFormParameterTextValue({
    /// key
    @JsonKey(name: PostmanFormParameterTextValue.keyKey_) required String key,

    /// value
    @JsonKey(name: PostmanFormParameterTextValue.valueKey_) String? value,

    /// disabled
    @Default(false)
    @JsonKey(name: PostmanFormParameterTextValue.disabledKey_)
    bool disabled,

    /// type
    @JsonKey(name: PostmanFormParameterTextValue.typeKey_) String? type,

    /// contentType
    @JsonKey(name: PostmanFormParameterTextValue.contentTypeKey_)
    String? contentType,

    /// description
    @JsonKey(name: PostmanFormParameterTextValue.descriptionKey_)
    PostmanDescription? description,
  }) = _PostmanFormParameterTextValue;

  factory PostmanFormParameterTextValue.fromJson(Map<String, dynamic> json) =>
      _$PostmanFormParameterTextValueFromJson(json);

  static const String keyKey_ = 'key';

  static const String valueKey_ = 'value';

  static const String disabledKey_ = 'disabled';

  static const String typeKey_ = 'type';

  static const String contentTypeKey_ = 'contentType';

  static const String descriptionKey_ = 'description';
}
