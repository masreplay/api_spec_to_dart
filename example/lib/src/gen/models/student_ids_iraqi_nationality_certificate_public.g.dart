// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_ids_iraqi_nationality_certificate_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentIdsIraqiNationalityCertificatePublicImpl
    _$$StudentIdsIraqiNationalityCertificatePublicImplFromJson(
            Map<String, dynamic> json) =>
        _$StudentIdsIraqiNationalityCertificatePublicImpl(
          number: json['number'] as String?,
          walletNumber: json['wallet_number'] as String?,
          issuingAuthority: json['issuing_authority'] as String?,
          dateOfIssue: json['date_of_issue'] == null
              ? null
              : DateTime.parse(json['date_of_issue'] as String),
          frontImage: json['front_image'] == null
              ? null
              : FilePublic.fromJson(
                  json['front_image'] as Map<String, dynamic>),
          backImage: json['back_image'] == null
              ? null
              : FilePublic.fromJson(json['back_image'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$StudentIdsIraqiNationalityCertificatePublicImplToJson(
        _$StudentIdsIraqiNationalityCertificatePublicImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'wallet_number': instance.walletNumber,
      'issuing_authority': instance.issuingAuthority,
      'date_of_issue': instance.dateOfIssue?.toIso8601String(),
      'front_image': instance.frontImage,
      'back_image': instance.backImage,
    };
