// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_ids_iraqi_nationality_certificate_update_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentIdsIraqiNationalityCertificateUpdatePublicImpl
    _$$StudentIdsIraqiNationalityCertificateUpdatePublicImplFromJson(
            Map<String, dynamic> json) =>
        _$StudentIdsIraqiNationalityCertificateUpdatePublicImpl(
          iraqiNationalityCertificateNumber:
              json['iraqi_nationality_certificate_number'] as String,
          iraqiNationalityCertificateWalletNumber:
              json['iraqi_nationality_certificate_wallet_number'] as String,
          iraqiNationalityCertificateDateOfIssue: DateTime.parse(
              json['iraqi_nationality_certificate_date_of_issue'] as String),
          iraqiNationalityCertificateIssuingAuthority:
              json['iraqi_nationality_certificate_issuing_authority'] as String,
        );

Map<String, dynamic>
    _$$StudentIdsIraqiNationalityCertificateUpdatePublicImplToJson(
            _$StudentIdsIraqiNationalityCertificateUpdatePublicImpl instance) =>
        <String, dynamic>{
          'iraqi_nationality_certificate_number':
              instance.iraqiNationalityCertificateNumber,
          'iraqi_nationality_certificate_wallet_number':
              instance.iraqiNationalityCertificateWalletNumber,
          'iraqi_nationality_certificate_date_of_issue':
              instance.iraqiNationalityCertificateDateOfIssue.toIso8601String(),
          'iraqi_nationality_certificate_issuing_authority':
              instance.iraqiNationalityCertificateIssuingAuthority,
        };
