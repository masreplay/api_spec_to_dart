/// header
///
/// ```json
/// {
///     "properties": {
///         "key": {
///             "type": "string",
///             "description": "This holds the LHS of the HTTP Header, e.g ``Content-Type`` or ``X-Custom-Header``"
///         },
///         "value": {
///             "type": "string",
///             "description": "The value (or the RHS) of the Header is stored in this field."
///         },
///         "disabled": {
///             "type": "boolean",
///             "description": "If set to true, the current header will not be sent with requests.",
///             "default": false
///         },
///         "description": {
///             "$ref": "#/components/schemas/description"
///         }
///     },
///     "type": "object",
///     "required": [
///         "key",
///         "value"
///     ],
///     "description": "Represents a single HTTP Header"
/// }
/// ```
library;

import 'exports.dart';
part 'postman_header.freezed.dart';
part 'postman_header.g.dart';

@freezed
abstract class PostmanHeader with _$PostmanHeader {
  const PostmanHeader._();

  @jsonSerializable
  const factory PostmanHeader({
    /// key
    @JsonKey(name: PostmanHeader.keyKey_) required String key,

    /// value
    @JsonKey(name: PostmanHeader.valueKey_) required String value,

    /// disabled
    @Default(false) @JsonKey(name: PostmanHeader.disabledKey_) bool disabled,

    /// description
    @JsonKey(name: PostmanHeader.descriptionKey_)
    PostmanDescription? description,
  }) = _PostmanHeader;

  factory PostmanHeader.fromJson(Map<String, dynamic> json) =>
      _$PostmanHeaderFromJson(json);

  static const String keyKey_ = 'key';

  static const String valueKey_ = 'value';

  static const String disabledKey_ = 'disabled';

  static const String descriptionKey_ = 'description';
}
