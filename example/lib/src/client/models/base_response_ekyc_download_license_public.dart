import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_ekyc_download_license_public.freezed.dart';
part 'base_response_ekyc_download_license_public.g.dart';

@freezed
class BaseResponseEkycDownloadLicensePublic
    with _$BaseResponseEkycDownloadLicensePublic {
  const BaseResponseEkycDownloadLicensePublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseEkycDownloadLicensePublic({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required EkycDownloadLicensePublic data,
  }) = _BaseResponseEkycDownloadLicensePublic;

  factory BaseResponseEkycDownloadLicensePublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseEkycDownloadLicensePublicFromJson(json);
}
