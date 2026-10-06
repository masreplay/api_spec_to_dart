/// PostmanCertificateKey
///
/// ```json
/// {
///     "properties": {
///         "src": {
///             "description": "The path to file containing key for certificate, on the file system"
///         }
///     },
///     "type": "object",
///     "description": "An object containing path to file containing private key, on the file system"
/// }
/// ```
library;

import 'exports.dart';
part 'postman_certificate_key.freezed.dart';
part 'postman_certificate_key.g.dart';

@freezed
abstract class PostmanCertificateKey with _$PostmanCertificateKey {
  const PostmanCertificateKey._();

  @jsonSerializable
  const factory PostmanCertificateKey({
    /// src
    @JsonKey(name: PostmanCertificateKey.srcKey_) dynamic src,
  }) = _PostmanCertificateKey;

  factory PostmanCertificateKey.fromJson(Map<String, dynamic> json) =>
      _$PostmanCertificateKeyFromJson(json);

  static const String srcKey_ = 'src';
}
