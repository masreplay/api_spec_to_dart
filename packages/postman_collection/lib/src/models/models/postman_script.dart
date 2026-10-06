/// script
///
/// ```json
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "description": "A unique, user defined identifier that can  be used to refer to this script from requests."
///         },
///         "type": {
///             "type": "string",
///             "description": "Type of the script. E.g: 'text/javascript'"
///         },
///         "exec": {
///             "oneOf": [
///                 {
///                     "type": "array",
///                     "items": {
///                         "type": "string"
///                     },
///                     "description": "This is an array of strings, where each line represents a single line of code. Having lines separate makes it possible to easily track changes made to scripts."
///                 },
///                 {
///                     "type": "string"
///                 }
///             ]
///         },
///         "src": {
///             "$ref": "#/components/schemas/url"
///         },
///         "name": {
///             "type": "string",
///             "description": "Script name"
///         }
///     },
///     "type": "object",
///     "description": "A script is a snippet of Javascript code that can be used to to perform setup or teardown operations on a particular response."
/// }
/// ```
library;

import 'exports.dart';
part 'postman_script.freezed.dart';
part 'postman_script.g.dart';

@freezed
abstract class PostmanScript with _$PostmanScript {
  const PostmanScript._();

  @jsonSerializable
  const factory PostmanScript({
    /// id
    @JsonKey(name: PostmanScript.idKey_) String? id,

    /// type
    @JsonKey(name: PostmanScript.typeKey_) String? type,

    /// exec
    @JsonKey(name: PostmanScript.execKey_) PostmanScriptExec? exec,

    /// src
    @JsonKey(name: PostmanScript.srcKey_) PostmanUrl? src,

    /// name
    @JsonKey(name: PostmanScript.nameKey_) String? name,
  }) = _PostmanScript;

  factory PostmanScript.fromJson(Map<String, dynamic> json) =>
      _$PostmanScriptFromJson(json);

  static const String idKey_ = 'id';

  static const String typeKey_ = 'type';

  static const String execKey_ = 'exec';

  static const String srcKey_ = 'src';

  static const String nameKey_ = 'name';
}
