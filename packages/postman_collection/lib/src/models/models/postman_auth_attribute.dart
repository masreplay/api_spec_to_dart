/// auth-attribute
///
/// ```json
/// {
///     "properties": {
///         "key": {
///             "type": "string"
///         },
///         "value": {},
///         "type": {
///             "type": "string"
///         }
///     },
///     "type": "object",
///     "required": [
///         "key"
///     ],
///     "description": "Represents an attribute for any authorization method provided by Postman. For example `username` and `password` are set as auth attributes for Basic Authentication method."
/// }
/// ```
library;

import 'exports.dart';
part 'postman_auth_attribute.freezed.dart';
part 'postman_auth_attribute.g.dart';

@freezed
abstract class PostmanAuthAttribute with _$PostmanAuthAttribute {
  const PostmanAuthAttribute._();

  @jsonSerializable
  const factory PostmanAuthAttribute({
    /// key
    @JsonKey(name: PostmanAuthAttribute.keyKey_) required String key,

    /// value
    @JsonKey(name: PostmanAuthAttribute.valueKey_) dynamic value,

    /// type
    @JsonKey(name: PostmanAuthAttribute.typeKey_) String? type,
  }) = _PostmanAuthAttribute;

  factory PostmanAuthAttribute.fromJson(Map<String, dynamic> json) =>
      _$PostmanAuthAttributeFromJson(json);

  static const String keyKey_ = 'key';

  static const String valueKey_ = 'value';

  static const String typeKey_ = 'type';
}
