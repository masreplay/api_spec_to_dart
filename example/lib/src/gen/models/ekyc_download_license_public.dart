import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'ekyc_download_license_public.freezed.dart';
part 'ekyc_download_license_public.g.dart';

///EkycDownloadLicensePublic

@freezed
class EkycDownloadLicensePublic with _$EkycDownloadLicensePublic {
  const EkycDownloadLicensePublic._();

  @JsonSerializable(converters: convertors)
  const factory EkycDownloadLicensePublic({
    /// Content
    @JsonKey(name: 'content') required String content,
  }) = _EkycDownloadLicensePublic;

  factory EkycDownloadLicensePublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$EkycDownloadLicensePublicFromJson(json);
}
