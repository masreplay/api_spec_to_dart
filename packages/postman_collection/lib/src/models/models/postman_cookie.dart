/// cookie
///
/// ```json
/// {
///     "properties": {
///         "domain": {
///             "type": "string",
///             "description": "The domain for which this cookie is valid."
///         },
///         "expires": {
///             "type": "string",
///             "description": "When the cookie expires.",
///             "nullable": true
///         },
///         "maxAge": {
///             "type": "string"
///         },
///         "hostOnly": {
///             "type": "boolean",
///             "description": "True if the cookie is a host-only cookie. (i.e. a request's URL domain must exactly match the domain of the cookie)."
///         },
///         "httpOnly": {
///             "type": "boolean",
///             "description": "Indicates if this cookie is HTTP Only. (if True, the cookie is inaccessible to client-side scripts)"
///         },
///         "name": {
///             "type": "string",
///             "description": "This is the name of the Cookie."
///         },
///         "path": {
///             "type": "string",
///             "description": "The path associated with the Cookie."
///         },
///         "secure": {
///             "type": "boolean",
///             "description": "Indicates if the 'secure' flag is set on the Cookie, meaning that it is transmitted over secure connections only. (typically HTTPS)"
///         },
///         "session": {
///             "type": "boolean",
///             "description": "True if the cookie is a session cookie."
///         },
///         "value": {
///             "type": "string",
///             "description": "The value of the Cookie."
///         },
///         "extensions": {
///             "type": "array",
///             "description": "Custom attributes for a cookie go here, such as the [Priority Field](https://code.google.com/p/chromium/issues/detail?id=232693)"
///         }
///     },
///     "type": "object",
///     "required": [
///         "domain",
///         "path"
///     ],
///     "description": "A Cookie, that follows the [Google Chrome format](https://developer.chrome.com/extensions/cookies)"
/// }
/// ```
library;

import 'exports.dart';
part 'postman_cookie.freezed.dart';
part 'postman_cookie.g.dart';

@freezed
abstract class PostmanCookie with _$PostmanCookie {
  const PostmanCookie._();

  @jsonSerializable
  const factory PostmanCookie({
    /// domain
    @JsonKey(name: PostmanCookie.domainKey_) required String domain,

    /// expires
    @JsonKey(name: PostmanCookie.expiresKey_) String? expires,

    /// maxAge
    @JsonKey(name: PostmanCookie.maxAgeKey_) String? maxAge,

    /// hostOnly
    @JsonKey(name: PostmanCookie.hostOnlyKey_) bool? hostOnly,

    /// httpOnly
    @JsonKey(name: PostmanCookie.httpOnlyKey_) bool? httpOnly,

    /// name
    @JsonKey(name: PostmanCookie.nameKey_) String? name,

    /// path
    @JsonKey(name: PostmanCookie.pathKey_) required String path,

    /// secure
    @JsonKey(name: PostmanCookie.secureKey_) bool? secure,

    /// session
    @JsonKey(name: PostmanCookie.sessionKey_) bool? session,

    /// value
    @JsonKey(name: PostmanCookie.valueKey_) String? value,

    /// extensions
    @JsonKey(name: PostmanCookie.extensionsKey_) List<dynamic>? extensions,
  }) = _PostmanCookie;

  factory PostmanCookie.fromJson(Map<String, dynamic> json) =>
      _$PostmanCookieFromJson(json);

  static const String domainKey_ = 'domain';

  static const String expiresKey_ = 'expires';

  static const String maxAgeKey_ = 'maxAge';

  static const String hostOnlyKey_ = 'hostOnly';

  static const String httpOnlyKey_ = 'httpOnly';

  static const String nameKey_ = 'name';

  static const String pathKey_ = 'path';

  static const String secureKey_ = 'secure';

  static const String sessionKey_ = 'session';

  static const String valueKey_ = 'value';

  static const String extensionsKey_ = 'extensions';
}
