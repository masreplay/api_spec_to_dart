import 'package:freezed_annotation/freezed_annotation.dart';

part 'ekyc_download_license_public.freezed.dart';
part 'ekyc_download_license_public.g.dart';

@freezed
class EkycDownloadLicensePublic with _$EkycDownloadLicensePublic {
  const factory EkycDownloadLicensePublic({
    @JsonKey(name: 'content') required String content,
  }) = _EkycDownloadLicensePublic;

  factory EkycDownloadLicensePublic.fromJson(Map<String, dynamic> json) =>
      _$EkycDownloadLicensePublicFromJson(json);
}
