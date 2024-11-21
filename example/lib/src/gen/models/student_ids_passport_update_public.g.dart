// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_ids_passport_update_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentIdsPassportUpdatePublicImpl
    _$$StudentIdsPassportUpdatePublicImplFromJson(Map<String, dynamic> json) =>
        _$StudentIdsPassportUpdatePublicImpl(
          passportNumber: json['passport_number'] as String,
          passportCountryId: (json['passport_country_id'] as num).toInt(),
          passportIssuingAuthority:
              json['passport_issuing_authority'] as String,
          passportDateOfIssue:
              DateTime.parse(json['passport_date_of_issue'] as String),
          passportDateOfExpiry:
              DateTime.parse(json['passport_date_of_expiry'] as String),
        );

Map<String, dynamic> _$$StudentIdsPassportUpdatePublicImplToJson(
        _$StudentIdsPassportUpdatePublicImpl instance) =>
    <String, dynamic>{
      'passport_number': instance.passportNumber,
      'passport_country_id': instance.passportCountryId,
      'passport_issuing_authority': instance.passportIssuingAuthority,
      'passport_date_of_issue': instance.passportDateOfIssue.toIso8601String(),
      'passport_date_of_expiry':
          instance.passportDateOfExpiry.toIso8601String(),
    };
