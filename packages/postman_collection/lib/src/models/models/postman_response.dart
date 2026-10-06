/// response
///
/// ```json
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "description": "A unique, user defined identifier that can  be used to refer to this response from requests."
///         },
///         "originalRequest": {
///             "$ref": "#/components/schemas/request"
///         },
///         "responseTime": {
///             "description": "The time taken by the request to complete. If a number, the unit is milliseconds. If the response is manually created, this can be set to `null`.",
///             "title": "ResponseTime",
///             "nullable": true
///         },
///         "timings": {
///             "type": "object",
///             "description": "Set of timing information related to request and response in milliseconds",
///             "title": "Response Timings",
///             "nullable": true
///         },
///         "header": {
///             "oneOf": [
///                 {
///                     "type": "array",
///                     "items": {
///                         "oneOf": [
///                             {
///                                 "$ref": "#/components/schemas/header"
///                             },
///                             {
///                                 "type": "string",
///                                 "title": "Header"
///                             }
///                         ]
///                     },
///                     "description": "No HTTP request is complete without its headers, and the same is true for a Postman request. This field is an array containing all the headers.",
///                     "title": "Header"
///                 },
///                 {
///                     "type": "string",
///                     "nullable": true
///                 }
///             ],
///             "title": "Headers"
///         },
///         "cookie": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/cookie"
///             }
///         },
///         "body": {
///             "type": "string",
///             "description": "The raw text of the response.",
///             "nullable": true
///         },
///         "status": {
///             "type": "string",
///             "description": "The response status, e.g: '200 OK'"
///         },
///         "code": {
///             "type": "integer",
///             "description": "The numerical response code, example: 200, 201, 404, etc."
///         }
///     },
///     "type": "object",
///     "description": "A response represents an HTTP response."
/// }
/// ```
library;

import 'exports.dart';
part 'postman_response.freezed.dart';
part 'postman_response.g.dart';

@freezed
abstract class PostmanResponse with _$PostmanResponse {
  const PostmanResponse._();

  @jsonSerializable
  const factory PostmanResponse({
    /// id
    @JsonKey(name: PostmanResponse.idKey_) String? id,

    /// originalRequest
    @JsonKey(name: PostmanResponse.originalRequestKey_)
    PostmanRequest? originalRequest,

    /// responseTime
    @JsonKey(name: PostmanResponse.responseTimeKey_) dynamic responseTime,

    /// timings
    @JsonKey(name: PostmanResponse.timingsKey_) Map<String, dynamic>? timings,

    /// header
    @JsonKey(name: PostmanResponse.headerKey_) PostmanHeaders? header,

    /// cookie
    @JsonKey(name: PostmanResponse.cookieKey_) List<PostmanCookie>? cookie,

    /// body
    @JsonKey(name: PostmanResponse.bodyKey_) String? body,

    /// status
    @JsonKey(name: PostmanResponse.statusKey_) String? status,

    /// code
    @JsonKey(name: PostmanResponse.codeKey_) int? code,
  }) = _PostmanResponse;

  factory PostmanResponse.fromJson(Map<String, dynamic> json) =>
      _$PostmanResponseFromJson(json);

  static const String idKey_ = 'id';

  static const String originalRequestKey_ = 'originalRequest';

  static const String responseTimeKey_ = 'responseTime';

  static const String timingsKey_ = 'timings';

  static const String headerKey_ = 'header';

  static const String cookieKey_ = 'cookie';

  static const String bodyKey_ = 'body';

  static const String statusKey_ = 'status';

  static const String codeKey_ = 'code';
}
