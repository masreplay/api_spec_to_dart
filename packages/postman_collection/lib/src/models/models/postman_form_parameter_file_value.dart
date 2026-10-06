/// PostmanFormParameterFileValue
///
/// ```json
/// {
///     "properties": {
///         "key": {
///             "type": "string"
///         },
///         "src": {
///             "oneOf": [
///                 {
///                     "type": "array"
///                 },
///                 {
///                     "type": "string"
///                 }
///             ],
///             "nullable": true
///         },
///         "disabled": {
///             "type": "boolean",
///             "description": "When set to true, prevents this form data entity from being sent.",
///             "default": false
///         },
///         "type": {
///             "type": "string",
///             "const": "file"
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
part 'postman_form_parameter_file_value.freezed.dart';
part 'postman_form_parameter_file_value.g.dart';

@freezed
abstract class PostmanFormParameterFileValue
    with _$PostmanFormParameterFileValue {
  const PostmanFormParameterFileValue._();

  @jsonSerializable
  const factory PostmanFormParameterFileValue({
    /// key
    @JsonKey(name: PostmanFormParameterFileValue.keyKey_) required String key,

    /// src
    @JsonKey(name: PostmanFormParameterFileValue.srcKey_)
    PostmanFormParameterFileValueSrc? src,

    /// disabled
    @Default(false)
    @JsonKey(name: PostmanFormParameterFileValue.disabledKey_)
    bool disabled,

    /// type
    @JsonKey(name: PostmanFormParameterFileValue.typeKey_) String? type,

    /// contentType
    @JsonKey(name: PostmanFormParameterFileValue.contentTypeKey_)
    String? contentType,

    /// description
    @JsonKey(name: PostmanFormParameterFileValue.descriptionKey_)
    PostmanDescription? description,
  }) = _PostmanFormParameterFileValue;

  factory PostmanFormParameterFileValue.fromJson(Map<String, dynamic> json) =>
      _$PostmanFormParameterFileValueFromJson(json);

  static const String keyKey_ = 'key';

  static const String srcKey_ = 'src';

  static const String disabledKey_ = 'disabled';

  static const String typeKey_ = 'type';

  static const String contentTypeKey_ = 'contentType';

  static const String descriptionKey_ = 'description';
}
