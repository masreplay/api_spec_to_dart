/// PostmanRequestObjectValue
///
/// ```json
/// {
///     "properties": {
///         "url": {
///             "$ref": "#/components/schemas/url"
///         },
///         "auth": {
///             "oneOf": [
///                 {
///                     "type": "null"
///                 },
///                 {
///                     "$ref": "#/components/schemas/auth"
///                 }
///             ]
///         },
///         "proxy": {
///             "$ref": "#/components/schemas/proxy-config"
///         },
///         "certificate": {
///             "$ref": "#/components/schemas/certificate"
///         },
///         "method": {
///             "anyOf": [
///                 {
///                     "enum": [
///                         "GET",
///                         "PUT",
///                         "POST",
///                         "PATCH",
///                         "DELETE",
///                         "COPY",
///                         "HEAD",
///                         "OPTIONS",
///                         "LINK",
///                         "UNLINK",
///                         "PURGE",
///                         "LOCK",
///                         "UNLOCK",
///                         "PROPFIND",
///                         "VIEW"
///                     ],
///                     "type": "string",
///                     "description": "The Standard HTTP method associated with this request."
///                 },
///                 {
///                     "type": "string",
///                     "description": "The Custom HTTP method associated with this request."
///                 }
///             ]
///         },
///         "description": {
///             "$ref": "#/components/schemas/description"
///         },
///         "header": {
///             "oneOf": [
///                 {
///                     "$ref": "#/components/schemas/header-list"
///                 },
///                 {
///                     "type": "string"
///                 }
///             ]
///         },
///         "body": {
///             "oneOf": [
///                 {
///                     "type": "object",
///                     "properties": {
///                         "mode": {
///                             "enum": [
///                                 "raw",
///                                 "urlencoded",
///                                 "formdata",
///                                 "file",
///                                 "graphql"
///                             ],
///                             "description": "Postman stores the type of data associated with this request in this field."
///                         },
///                         "raw": {
///                             "type": "string"
///                         },
///                         "graphql": {
///                             "type": "object"
///                         },
///                         "urlencoded": {
///                             "type": "array",
///                             "items": {
///                                 "type": "object",
///                                 "properties": {
///                                     "key": {
///                                         "type": "string"
///                                     },
///                                     "value": {
///                                         "type": "string"
///                                     },
///                                     "disabled": {
///                                         "type": "boolean",
///                                         "default": false
///                                     },
///                                     "description": {
///                                         "$ref": "#/components/schemas/description"
///                                     }
///                                 },
///                                 "required": [
///                                     "key"
///                                 ],
///                                 "title": "UrlEncodedParameter"
///                             }
///                         },
///                         "formdata": {
///                             "type": "array",
///                             "items": {
///                                 "anyOf": [
///                                     {
///                                         "properties": {
///                                             "key": {
///                                                 "type": "string"
///                                             },
///                                             "value": {
///                                                 "type": "string"
///                                             },
///                                             "disabled": {
///                                                 "type": "boolean",
///                                                 "description": "When set to true, prevents this form data entity from being sent.",
///                                                 "default": false
///                                             },
///                                             "type": {
///                                                 "type": "string",
///                                                 "const": "text"
///                                             },
///                                             "contentType": {
///                                                 "type": "string",
///                                                 "description": "Override Content-Type header of this form data entity."
///                                             },
///                                             "description": {
///                                                 "$ref": "#/components/schemas/description"
///                                             }
///                                         },
///                                         "required": [
///                                             "key"
///                                         ]
///                                     },
///                                     {
///                                         "properties": {
///                                             "key": {
///                                                 "type": "string"
///                                             },
///                                             "src": {
///                                                 "oneOf": [
///                                                     {
///                                                         "type": "array"
///                                                     },
///                                                     {
///                                                         "type": "string"
///                                                     }
///                                                 ],
///                                                 "nullable": true
///                                             },
///                                             "disabled": {
///                                                 "type": "boolean",
///                                                 "description": "When set to true, prevents this form data entity from being sent.",
///                                                 "default": false
///                                             },
///                                             "type": {
///                                                 "type": "string",
///                                                 "const": "file"
///                                             },
///                                             "contentType": {
///                                                 "type": "string",
///                                                 "description": "Override Content-Type header of this form data entity."
///                                             },
///                                             "description": {
///                                                 "$ref": "#/components/schemas/description"
///                                             }
///                                         },
///                                         "required": [
///                                             "key"
///                                         ]
///                                     }
///                                 ],
///                                 "title": "FormParameter"
///                             }
///                         },
///                         "file": {
///                             "type": "object",
///                             "properties": {
///                                 "src": {
///                                     "oneOf": [
///                                         {
///                                             "type": "string",
///                                             "description": "Contains the name of the file to upload. _Not the path_."
///                                         },
///                                         {
///                                             "type": "null",
///                                             "description": "A null src indicates that no file has been selected as a part of the request body"
///                                         }
///                                     ]
///                                 },
///                                 "content": {
///                                     "type": "string"
///                                 }
///                             }
///                         },
///                         "options": {
///                             "type": "object",
///                             "description": "Additional configurations and options set for various body modes."
///                         },
///                         "disabled": {
///                             "type": "boolean",
///                             "description": "When set to true, prevents request body from being sent.",
///                             "default": false
///                         }
///                     },
///                     "description": "This field contains the data usually contained in the request body."
///                 },
///                 {
///                     "type": "null"
///                 }
///             ]
///         }
///     },
///     "type": "object",
///     "title": "Request"
/// }
/// ```
library;

import 'exports.dart';
part 'postman_request_object_value.freezed.dart';
part 'postman_request_object_value.g.dart';

@freezed
abstract class PostmanRequestObjectValue with _$PostmanRequestObjectValue {
  const PostmanRequestObjectValue._();

  @jsonSerializable
  const factory PostmanRequestObjectValue({
    /// url
    @JsonKey(name: PostmanRequestObjectValue.urlKey_) PostmanUrl? url,

    /// auth
    @JsonKey(name: PostmanRequestObjectValue.authKey_) PostmanAuth? auth,

    /// proxy
    @JsonKey(name: PostmanRequestObjectValue.proxyKey_)
    PostmanProxyConfig? proxy,

    /// certificate
    @JsonKey(name: PostmanRequestObjectValue.certificateKey_)
    PostmanCertificate? certificate,

    /// method
    @JsonKey(name: PostmanRequestObjectValue.methodKey_) String? method,

    /// description
    @JsonKey(name: PostmanRequestObjectValue.descriptionKey_)
    PostmanDescription? description,

    /// header
    @JsonKey(name: PostmanRequestObjectValue.headerKey_)
    PostmanRequestObjectValueHeader? header,

    /// body
    @JsonKey(name: PostmanRequestObjectValue.bodyKey_)
    PostmanRequestObjectValueBody? body,
  }) = _PostmanRequestObjectValue;

  factory PostmanRequestObjectValue.fromJson(Map<String, dynamic> json) =>
      _$PostmanRequestObjectValueFromJson(json);

  static const String urlKey_ = 'url';

  static const String authKey_ = 'auth';

  static const String proxyKey_ = 'proxy';

  static const String certificateKey_ = 'certificate';

  static const String methodKey_ = 'method';

  static const String descriptionKey_ = 'description';

  static const String headerKey_ = 'header';

  static const String bodyKey_ = 'body';
}
