/// auth
///
/// ```json
/// {
///     "properties": {
///         "type": {
///             "enum": [
///                 "apikey",
///                 "awsv4",
///                 "basic",
///                 "bearer",
///                 "digest",
///                 "edgegrid",
///                 "hawk",
///                 "noauth",
///                 "oauth1",
///                 "oauth2",
///                 "ntlm"
///             ],
///             "type": "string"
///         },
///         "noauth": {},
///         "apikey": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/auth-attribute"
///             },
///             "description": "The attributes for API Key Authentication.",
///             "title": "API Key Authentication"
///         },
///         "awsv4": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/auth-attribute"
///             },
///             "description": "The attributes for [AWS Auth](http://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html).",
///             "title": "AWS Signature v4"
///         },
///         "basic": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/auth-attribute"
///             },
///             "description": "The attributes for [Basic Authentication](https://en.wikipedia.org/wiki/Basic_access_authentication).",
///             "title": "Basic Authentication"
///         },
///         "bearer": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/auth-attribute"
///             },
///             "description": "The helper attributes for [Bearer Token Authentication](https://tools.ietf.org/html/rfc6750)",
///             "title": "Bearer Token Authentication"
///         },
///         "digest": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/auth-attribute"
///             },
///             "description": "The attributes for [Digest Authentication](https://en.wikipedia.org/wiki/Digest_access_authentication).",
///             "title": "Digest Authentication"
///         },
///         "edgegrid": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/auth-attribute"
///             },
///             "description": "The attributes for [Akamai EdgeGrid Authentication](https://developer.akamai.com/legacy/introduction/Client_Auth.html).",
///             "title": "EdgeGrid Authentication"
///         },
///         "hawk": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/auth-attribute"
///             },
///             "description": "The attributes for [Hawk Authentication](https://github.com/hueniverse/hawk)",
///             "title": "Hawk Authentication"
///         },
///         "ntlm": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/auth-attribute"
///             },
///             "description": "The attributes for [NTLM Authentication](https://msdn.microsoft.com/en-us/library/cc237488.aspx)",
///             "title": "NTLM Authentication"
///         },
///         "oauth1": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/auth-attribute"
///             },
///             "description": "The attributes for [OAuth2](https://oauth.net/1/)",
///             "title": "OAuth1"
///         },
///         "oauth2": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/auth-attribute"
///             },
///             "description": "Helper attributes for [OAuth2](https://oauth.net/2/)",
///             "title": "OAuth2"
///         }
///     },
///     "type": "object",
///     "required": [
///         "type"
///     ],
///     "description": "Represents authentication helpers provided by Postman"
/// }
/// ```
library;

import 'exports.dart';
part 'postman_auth.freezed.dart';
part 'postman_auth.g.dart';

@freezed
abstract class PostmanAuth with _$PostmanAuth {
  const PostmanAuth._();

  @jsonSerializable
  const factory PostmanAuth({
    /// type
    @JsonKey(name: PostmanAuth.typeKey_) required PostmanAuthType type,

    /// noauth
    @JsonKey(name: PostmanAuth.noauthKey_) dynamic noauth,

    /// apikey
    @JsonKey(name: PostmanAuth.apikeyKey_) List<PostmanAuthAttribute>? apikey,

    /// awsv4
    @JsonKey(name: PostmanAuth.awsv4Key_) List<PostmanAuthAttribute>? awsv4,

    /// basic
    @JsonKey(name: PostmanAuth.basicKey_) List<PostmanAuthAttribute>? basic,

    /// bearer
    @JsonKey(name: PostmanAuth.bearerKey_) List<PostmanAuthAttribute>? bearer,

    /// digest
    @JsonKey(name: PostmanAuth.digestKey_) List<PostmanAuthAttribute>? digest,

    /// edgegrid
    @JsonKey(name: PostmanAuth.edgegridKey_)
    List<PostmanAuthAttribute>? edgegrid,

    /// hawk
    @JsonKey(name: PostmanAuth.hawkKey_) List<PostmanAuthAttribute>? hawk,

    /// ntlm
    @JsonKey(name: PostmanAuth.ntlmKey_) List<PostmanAuthAttribute>? ntlm,

    /// oauth1
    @JsonKey(name: PostmanAuth.oauth1Key_) List<PostmanAuthAttribute>? oauth1,

    /// oauth2
    @JsonKey(name: PostmanAuth.oauth2Key_) List<PostmanAuthAttribute>? oauth2,
  }) = _PostmanAuth;

  factory PostmanAuth.fromJson(Map<String, dynamic> json) =>
      _$PostmanAuthFromJson(json);

  static const String typeKey_ = 'type';

  static const String noauthKey_ = 'noauth';

  static const String apikeyKey_ = 'apikey';

  static const String awsv4Key_ = 'awsv4';

  static const String basicKey_ = 'basic';

  static const String bearerKey_ = 'bearer';

  static const String digestKey_ = 'digest';

  static const String edgegridKey_ = 'edgegrid';

  static const String hawkKey_ = 'hawk';

  static const String ntlmKey_ = 'ntlm';

  static const String oauth1Key_ = 'oauth1';

  static const String oauth2Key_ = 'oauth2';
}
