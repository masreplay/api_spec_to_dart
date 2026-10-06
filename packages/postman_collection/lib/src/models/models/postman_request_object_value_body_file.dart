/// PostmanRequestObjectValueBodyFile
///
/// ```json
/// {
///     "properties": {
///         "src": {
///             "oneOf": [
///                 {
///                     "type": "string",
///                     "description": "Contains the name of the file to upload. _Not the path_."
///                 },
///                 {
///                     "type": "null",
///                     "description": "A null src indicates that no file has been selected as a part of the request body"
///                 }
///             ]
///         },
///         "content": {
///             "type": "string"
///         }
///     },
///     "type": "object"
/// }
/// ```
library;

import 'exports.dart';
part 'postman_request_object_value_body_file.freezed.dart';
part 'postman_request_object_value_body_file.g.dart';

@freezed
abstract class PostmanRequestObjectValueBodyFile
    with _$PostmanRequestObjectValueBodyFile {
  const PostmanRequestObjectValueBodyFile._();

  @jsonSerializable
  const factory PostmanRequestObjectValueBodyFile({
    /// src
    @JsonKey(name: PostmanRequestObjectValueBodyFile.srcKey_) String? src,

    /// content
    @JsonKey(name: PostmanRequestObjectValueBodyFile.contentKey_)
    String? content,
  }) = _PostmanRequestObjectValueBodyFile;

  factory PostmanRequestObjectValueBodyFile.fromJson(
    Map<String, dynamic> json,
  ) => _$PostmanRequestObjectValueBodyFileFromJson(json);

  static const String srcKey_ = 'src';

  static const String contentKey_ = 'content';
}
