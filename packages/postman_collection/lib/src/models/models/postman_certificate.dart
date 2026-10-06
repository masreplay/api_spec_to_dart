/// certificate
///
/// ```json
/// {
///     "properties": {
///         "name": {
///             "type": "string",
///             "description": "A name for the certificate for user reference"
///         },
///         "matches": {
///             "type": "array",
///             "items": {
///                 "type": "string",
///                 "description": "An Url match pattern string"
///             },
///             "description": "A list of Url match pattern strings, to identify Urls this certificate can be used for."
///         },
///         "key": {
///             "type": "object",
///             "properties": {
///                 "src": {
///                     "description": "The path to file containing key for certificate, on the file system"
///                 }
///             },
///             "description": "An object containing path to file containing private key, on the file system"
///         },
///         "cert": {
///             "type": "object",
///             "properties": {
///                 "src": {
///                     "description": "The path to file containing key for certificate, on the file system"
///                 }
///             },
///             "description": "An object containing path to file certificate, on the file system"
///         },
///         "passphrase": {
///             "type": "string",
///             "description": "The passphrase for the certificate"
///         }
///     },
///     "type": "object",
///     "description": "A representation of an ssl certificate"
/// }
/// ```
library;

import 'exports.dart';
part 'postman_certificate.freezed.dart';
part 'postman_certificate.g.dart';

@freezed
abstract class PostmanCertificate with _$PostmanCertificate {
  const PostmanCertificate._();

  @jsonSerializable
  const factory PostmanCertificate({
    /// name
    @JsonKey(name: PostmanCertificate.nameKey_) String? name,

    /// matches
    @JsonKey(name: PostmanCertificate.matchesKey_) List<String>? matches,

    /// key
    @JsonKey(name: PostmanCertificate.keyKey_) PostmanCertificateKey? key,

    /// cert
    @JsonKey(name: PostmanCertificate.certKey_) PostmanCertificateCert? cert,

    /// passphrase
    @JsonKey(name: PostmanCertificate.passphraseKey_) String? passphrase,
  }) = _PostmanCertificate;

  factory PostmanCertificate.fromJson(Map<String, dynamic> json) =>
      _$PostmanCertificateFromJson(json);

  static const String nameKey_ = 'name';

  static const String matchesKey_ = 'matches';

  static const String keyKey_ = 'key';

  static const String certKey_ = 'cert';

  static const String passphraseKey_ = 'passphrase';
}
