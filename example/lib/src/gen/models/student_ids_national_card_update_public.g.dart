// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_ids_national_card_update_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentIdsNationalCardUpdatePublicImpl
    _$$StudentIdsNationalCardUpdatePublicImplFromJson(
            Map<String, dynamic> json) =>
        _$StudentIdsNationalCardUpdatePublicImpl(
          nationalCardNumber: json['national_card_number'] as String,
          nationalCardSerialNumber:
              json['national_card_serial_number'] as String,
          nationalCardIssuingAuthority:
              json['national_card_issuing_authority'] as String,
          nationalCardDateOfIssue:
              DateTime.parse(json['national_card_date_of_issue'] as String),
          nationalCardDateOfExpiry:
              DateTime.parse(json['national_card_date_of_expiry'] as String),
          nationalCardFamilyNumber:
              json['national_card_family_number'] as String,
        );

Map<String, dynamic> _$$StudentIdsNationalCardUpdatePublicImplToJson(
        _$StudentIdsNationalCardUpdatePublicImpl instance) =>
    <String, dynamic>{
      'national_card_number': instance.nationalCardNumber,
      'national_card_serial_number': instance.nationalCardSerialNumber,
      'national_card_issuing_authority': instance.nationalCardIssuingAuthority,
      'national_card_date_of_issue':
          instance.nationalCardDateOfIssue.toIso8601String(),
      'national_card_date_of_expiry':
          instance.nationalCardDateOfExpiry.toIso8601String(),
      'national_card_family_number': instance.nationalCardFamilyNumber,
    };
