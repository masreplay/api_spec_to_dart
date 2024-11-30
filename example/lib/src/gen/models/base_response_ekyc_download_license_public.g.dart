// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_ekyc_download_license_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseEkycDownloadLicensePublicImpl
    _$$BaseResponseEkycDownloadLicensePublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseEkycDownloadLicensePublicImpl(
          message: json['message'] as String?,
          data: EkycDownloadLicensePublic.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseEkycDownloadLicensePublicImplToJson(
        _$BaseResponseEkycDownloadLicensePublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
