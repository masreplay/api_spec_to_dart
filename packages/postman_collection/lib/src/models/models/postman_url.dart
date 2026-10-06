/// url
///
/// ```json
/// {
///     "description": "If object, contains the complete broken-down URL for this request. If string, contains the literal request URL.",
///     "oneOf": [
///         {
///             "type": "object",
///             "properties": {
///                 "raw": {
///                     "type": "string",
///                     "description": "The string representation of the request URL, including the protocol, host, path, hash, query parameter(s) and path variable(s)."
///                 },
///                 "protocol": {
///                     "type": "string",
///                     "description": "The protocol associated with the request, E.g: 'http'"
///                 },
///                 "host": {
///                     "oneOf": [
///                         {
///                             "type": "string"
///                         },
///                         {
///                             "type": "array",
///                             "items": {
///                                 "type": "string"
///                             },
///                             "description": "The host, split into subdomain strings."
///                         }
///                     ],
///                     "description": "The host for the URL, E.g: api.yourdomain.com. Can be stored as a string or as an array of strings.",
///                     "title": "Host"
///                 },
///                 "path": {
///                     "oneOf": [
///                         {
///                             "type": "string"
///                         },
///                         {
///                             "type": "array",
///                             "items": {
///                                 "oneOf": [
///                                     {
///                                         "type": "string"
///                                     },
///                                     {
///                                         "type": "object",
///                                         "properties": {
///                                             "type": {
///                                                 "type": "string"
///                                             },
///                                             "value": {
///                                                 "type": "string"
///                                             }
///                                         }
///                                     }
///                                 ]
///                             },
///                             "description": "The complete path of the current url, broken down into segments. A segment could be a string, or a path variable."
///                         }
///                     ]
///                 },
///                 "port": {
///                     "type": "string",
///                     "description": "The port number present in this URL. An empty value implies 80/443 depending on whether the protocol field contains http/https."
///                 },
///                 "query": {
///                     "type": "array",
///                     "items": {
///                         "type": "object",
///                         "properties": {
///                             "key": {
///                                 "type": "string",
///                                 "nullable": true
///                             },
///                             "value": {
///                                 "type": "string",
///                                 "nullable": true
///                             },
///                             "disabled": {
///                                 "type": "boolean",
///                                 "description": "If set to true, the current query parameter will not be sent with the request.",
///                                 "default": false
///                             },
///                             "description": {
///                                 "$ref": "#/components/schemas/description"
///                             }
///                         },
///                         "title": "QueryParam"
///                     },
///                     "description": "An array of QueryParams, which is basically the query string part of the URL, parsed into separate variables"
///                 },
///                 "hash": {
///                     "type": "string",
///                     "description": "Contains the URL fragment (if any). Usually this is not transmitted over the network, but it could be useful to store this in some cases."
///                 },
///                 "variable": {
///                     "type": "array",
///                     "items": {
///                         "$ref": "#/components/schemas/variable"
///                     },
///                     "description": "Postman supports path variables with the syntax `/path/:variableName/to/somewhere`. These variables are stored in this field."
///                 }
///             }
///         },
///         {
///             "type": "string"
///         }
///     ]
/// }
/// ```
library;

import 'exports.dart';

sealed class PostmanUrl {
  const PostmanUrl();

  const factory PostmanUrl.object(PostmanUrlObjectValue value) =
      PostmanUrlObject;
  const factory PostmanUrl.string(String value) = PostmanUrlString;

  factory PostmanUrl.fromJson(Object? json) => switch (json) {
    String() => PostmanUrlString(json),
    Map<String, dynamic>() => PostmanUrlObject(
      PostmanUrlObjectValue.fromJson(json),
    ),
    _ => throw ArgumentError.value(
      json,
      'json',
      'No PostmanUrl variant matches',
    ),
  };

  Object? toJson();
}

final class PostmanUrlObject extends PostmanUrl {
  const PostmanUrlObject(this.value);

  final PostmanUrlObjectValue value;

  @override
  Object? toJson() => value.toJson();

  @override
  bool operator ==(Object other) =>
      other is PostmanUrlObject && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'PostmanUrl.object($value)';
}

final class PostmanUrlString extends PostmanUrl {
  const PostmanUrlString(this.value);

  final String value;

  @override
  Object? toJson() => value;

  @override
  bool operator ==(Object other) =>
      other is PostmanUrlString && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'PostmanUrl.string($value)';
}
