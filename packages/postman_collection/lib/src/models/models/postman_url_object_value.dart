/// PostmanUrlObjectValue
///
/// ```json
/// {
///     "properties": {
///         "raw": {
///             "type": "string",
///             "description": "The string representation of the request URL, including the protocol, host, path, hash, query parameter(s) and path variable(s)."
///         },
///         "protocol": {
///             "type": "string",
///             "description": "The protocol associated with the request, E.g: 'http'"
///         },
///         "host": {
///             "oneOf": [
///                 {
///                     "type": "string"
///                 },
///                 {
///                     "type": "array",
///                     "items": {
///                         "type": "string"
///                     },
///                     "description": "The host, split into subdomain strings."
///                 }
///             ],
///             "description": "The host for the URL, E.g: api.yourdomain.com. Can be stored as a string or as an array of strings.",
///             "title": "Host"
///         },
///         "path": {
///             "oneOf": [
///                 {
///                     "type": "string"
///                 },
///                 {
///                     "type": "array",
///                     "items": {
///                         "oneOf": [
///                             {
///                                 "type": "string"
///                             },
///                             {
///                                 "type": "object",
///                                 "properties": {
///                                     "type": {
///                                         "type": "string"
///                                     },
///                                     "value": {
///                                         "type": "string"
///                                     }
///                                 }
///                             }
///                         ]
///                     },
///                     "description": "The complete path of the current url, broken down into segments. A segment could be a string, or a path variable."
///                 }
///             ]
///         },
///         "port": {
///             "type": "string",
///             "description": "The port number present in this URL. An empty value implies 80/443 depending on whether the protocol field contains http/https."
///         },
///         "query": {
///             "type": "array",
///             "items": {
///                 "type": "object",
///                 "properties": {
///                     "key": {
///                         "type": "string",
///                         "nullable": true
///                     },
///                     "value": {
///                         "type": "string",
///                         "nullable": true
///                     },
///                     "disabled": {
///                         "type": "boolean",
///                         "description": "If set to true, the current query parameter will not be sent with the request.",
///                         "default": false
///                     },
///                     "description": {
///                         "$ref": "#/components/schemas/description"
///                     }
///                 },
///                 "title": "QueryParam"
///             },
///             "description": "An array of QueryParams, which is basically the query string part of the URL, parsed into separate variables"
///         },
///         "hash": {
///             "type": "string",
///             "description": "Contains the URL fragment (if any). Usually this is not transmitted over the network, but it could be useful to store this in some cases."
///         },
///         "variable": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/variable"
///             },
///             "description": "Postman supports path variables with the syntax `/path/:variableName/to/somewhere`. These variables are stored in this field."
///         }
///     },
///     "type": "object"
/// }
/// ```
library;

import 'exports.dart';
part 'postman_url_object_value.freezed.dart';
part 'postman_url_object_value.g.dart';

@freezed
abstract class PostmanUrlObjectValue with _$PostmanUrlObjectValue {
  const PostmanUrlObjectValue._();

  @jsonSerializable
  const factory PostmanUrlObjectValue({
    /// raw
    @JsonKey(name: PostmanUrlObjectValue.rawKey_) String? raw,

    /// protocol
    @JsonKey(name: PostmanUrlObjectValue.protocolKey_) String? protocol,

    /// host
    @JsonKey(name: PostmanUrlObjectValue.hostKey_) PostmanHost? host,

    /// path
    @JsonKey(name: PostmanUrlObjectValue.pathKey_)
    PostmanUrlObjectValuePath? path,

    /// port
    @JsonKey(name: PostmanUrlObjectValue.portKey_) String? port,

    /// query
    @JsonKey(name: PostmanUrlObjectValue.queryKey_)
    List<PostmanQueryParam>? query,

    /// hash
    @JsonKey(name: PostmanUrlObjectValue.hashKey_) String? hash,

    /// variable
    @JsonKey(name: PostmanUrlObjectValue.variableKey_)
    List<PostmanVariable>? variable,
  }) = _PostmanUrlObjectValue;

  factory PostmanUrlObjectValue.fromJson(Map<String, dynamic> json) =>
      _$PostmanUrlObjectValueFromJson(json);

  static const String rawKey_ = 'raw';

  static const String protocolKey_ = 'protocol';

  static const String hostKey_ = 'host';

  static const String pathKey_ = 'path';

  static const String portKey_ = 'port';

  static const String queryKey_ = 'query';

  static const String hashKey_ = 'hash';

  static const String variableKey_ = 'variable';
}
