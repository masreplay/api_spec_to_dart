/// PostmanDescriptionObjectValue
///
/// ```json
/// {
///     "properties": {
///         "content": {
///             "type": "string",
///             "description": "The content of the description goes here, as a raw string."
///         },
///         "type": {
///             "type": "string",
///             "description": "Holds the mime type of the raw description content. E.g: 'text/markdown' or 'text/html'.\nThe type is used to correctly render the description when generating documentation, or in the Postman app."
///         },
///         "version": {
///             "description": "Description can have versions associated with it, which should be put in this property."
///         }
///     },
///     "type": "object",
///     "title": "Description"
/// }
/// ```
library;

import 'exports.dart';
part 'postman_description_object_value.freezed.dart';
part 'postman_description_object_value.g.dart';

@freezed
abstract class PostmanDescriptionObjectValue
    with _$PostmanDescriptionObjectValue {
  const PostmanDescriptionObjectValue._();

  @jsonSerializable
  const factory PostmanDescriptionObjectValue({
    /// content
    @JsonKey(name: PostmanDescriptionObjectValue.contentKey_) String? content,

    /// type
    @JsonKey(name: PostmanDescriptionObjectValue.typeKey_) String? type,

    /// version
    @JsonKey(name: PostmanDescriptionObjectValue.versionKey_) dynamic version,
  }) = _PostmanDescriptionObjectValue;

  factory PostmanDescriptionObjectValue.fromJson(Map<String, dynamic> json) =>
      _$PostmanDescriptionObjectValueFromJson(json);

  static const String contentKey_ = 'content';

  static const String typeKey_ = 'type';

  static const String versionKey_ = 'version';
}
