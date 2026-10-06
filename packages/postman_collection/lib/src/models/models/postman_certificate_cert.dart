/// PostmanCertificateCert
///
/// ```json
/// {
///     "properties": {
///         "src": {
///             "description": "The path to file containing key for certificate, on the file system"
///         }
///     },
///     "type": "object",
///     "description": "An object containing path to file certificate, on the file system"
/// }
/// ```
library;

import 'exports.dart';
part 'postman_certificate_cert.freezed.dart';
part 'postman_certificate_cert.g.dart';

@freezed
abstract class PostmanCertificateCert with _$PostmanCertificateCert {
  const PostmanCertificateCert._();

  @jsonSerializable
  const factory PostmanCertificateCert({
    /// src
    @JsonKey(name: PostmanCertificateCert.srcKey_) dynamic src,
  }) = _PostmanCertificateCert;

  factory PostmanCertificateCert.fromJson(Map<String, dynamic> json) =>
      _$PostmanCertificateCertFromJson(json);

  static const String srcKey_ = 'src';
}
