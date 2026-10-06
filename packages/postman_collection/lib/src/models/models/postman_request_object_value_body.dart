/// PostmanRequestObjectValueBody
///
/// ```json
/// {
///     "properties": {
///         "mode": {
///             "enum": [
///                 "raw",
///                 "urlencoded",
///                 "formdata",
///                 "file",
///                 "graphql"
///             ],
///             "description": "Postman stores the type of data associated with this request in this field."
///         },
///         "raw": {
///             "type": "string"
///         },
///         "graphql": {
///             "type": "object"
///         },
///         "urlencoded": {
///             "type": "array",
///             "items": {
///                 "type": "object",
///                 "properties": {
///                     "key": {
///                         "type": "string"
///                     },
///                     "value": {
///                         "type": "string"
///                     },
///                     "disabled": {
///                         "type": "boolean",
///                         "default": false
///                     },
///                     "description": {
///                         "$ref": "#/components/schemas/description"
///                     }
///                 },
///                 "required": [
///                     "key"
///                 ],
///                 "title": "UrlEncodedParameter"
///             }
///         },
///         "formdata": {
///             "type": "array",
///             "items": {
///                 "anyOf": [
///                     {
///                         "properties": {
///                             "key": {
///                                 "type": "string"
///                             },
///                             "value": {
///                                 "type": "string"
///                             },
///                             "disabled": {
///                                 "type": "boolean",
///                                 "description": "When set to true, prevents this form data entity from being sent.",
///                                 "default": false
///                             },
///                             "type": {
///                                 "type": "string",
///                                 "const": "text"
///                             },
///                             "contentType": {
///                                 "type": "string",
///                                 "description": "Override Content-Type header of this form data entity."
///                             },
///                             "description": {
///                                 "$ref": "#/components/schemas/description"
///                             }
///                         },
///                         "required": [
///                             "key"
///                         ]
///                     },
///                     {
///                         "properties": {
///                             "key": {
///                                 "type": "string"
///                             },
///                             "src": {
///                                 "oneOf": [
///                                     {
///                                         "type": "array"
///                                     },
///                                     {
///                                         "type": "string"
///                                     }
///                                 ],
///                                 "nullable": true
///                             },
///                             "disabled": {
///                                 "type": "boolean",
///                                 "description": "When set to true, prevents this form data entity from being sent.",
///                                 "default": false
///                             },
///                             "type": {
///                                 "type": "string",
///                                 "const": "file"
///                             },
///                             "contentType": {
///                                 "type": "string",
///                                 "description": "Override Content-Type header of this form data entity."
///                             },
///                             "description": {
///                                 "$ref": "#/components/schemas/description"
///                             }
///                         },
///                         "required": [
///                             "key"
///                         ]
///                     }
///                 ],
///                 "title": "FormParameter"
///             }
///         },
///         "file": {
///             "type": "object",
///             "properties": {
///                 "src": {
///                     "oneOf": [
///                         {
///                             "type": "string",
///                             "description": "Contains the name of the file to upload. _Not the path_."
///                         },
///                         {
///                             "type": "null",
///                             "description": "A null src indicates that no file has been selected as a part of the request body"
///                         }
///                     ]
///                 },
///                 "content": {
///                     "type": "string"
///                 }
///             }
///         },
///         "options": {
///             "type": "object",
///             "description": "Additional configurations and options set for various body modes."
///         },
///         "disabled": {
///             "type": "boolean",
///             "description": "When set to true, prevents request body from being sent.",
///             "default": false
///         }
///     },
///     "type": "object",
///     "description": "This field contains the data usually contained in the request body."
/// }
/// ```
library;

import 'exports.dart';
part 'postman_request_object_value_body.freezed.dart';
part 'postman_request_object_value_body.g.dart';

@freezed
abstract class PostmanRequestObjectValueBody
    with _$PostmanRequestObjectValueBody {
  const PostmanRequestObjectValueBody._();

  @jsonSerializable
  const factory PostmanRequestObjectValueBody({
    /// mode
    @JsonKey(name: PostmanRequestObjectValueBody.modeKey_)
    PostmanRequestObjectValueBodyMode? mode,

    /// raw
    @JsonKey(name: PostmanRequestObjectValueBody.rawKey_) String? raw,

    /// graphql
    @JsonKey(name: PostmanRequestObjectValueBody.graphqlKey_)
    Map<String, dynamic>? graphql,

    /// urlencoded
    @JsonKey(name: PostmanRequestObjectValueBody.urlencodedKey_)
    List<PostmanUrlEncodedParameter>? urlencoded,

    /// formdata
    @JsonKey(name: PostmanRequestObjectValueBody.formdataKey_)
    List<PostmanFormParameter>? formdata,

    /// file
    @JsonKey(name: PostmanRequestObjectValueBody.fileKey_)
    PostmanRequestObjectValueBodyFile? file,

    /// options
    @JsonKey(name: PostmanRequestObjectValueBody.optionsKey_)
    Map<String, dynamic>? options,

    /// disabled
    @Default(false)
    @JsonKey(name: PostmanRequestObjectValueBody.disabledKey_)
    bool disabled,
  }) = _PostmanRequestObjectValueBody;

  factory PostmanRequestObjectValueBody.fromJson(Map<String, dynamic> json) =>
      _$PostmanRequestObjectValueBodyFromJson(json);

  static const String modeKey_ = 'mode';

  static const String rawKey_ = 'raw';

  static const String graphqlKey_ = 'graphql';

  static const String urlencodedKey_ = 'urlencoded';

  static const String formdataKey_ = 'formdata';

  static const String fileKey_ = 'file';

  static const String optionsKey_ = 'options';

  static const String disabledKey_ = 'disabled';
}
