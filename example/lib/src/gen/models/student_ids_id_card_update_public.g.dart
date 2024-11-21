// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_ids_id_card_update_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentIdsIdCardUpdatePublicImpl _$$StudentIdsIdCardUpdatePublicImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentIdsIdCardUpdatePublicImpl(
      identificationCardNumber: json['identification_card_number'] as String,
      identificationCardRecord: json['identification_card_record'] as String,
      identificationCardPage: json['identification_card_page'] as String,
      identificationCardIssuingAuthority:
          json['identification_card_issuing_authority'] as String,
      identificationCardDateOfIssue:
          DateTime.parse(json['identification_card_date_of_issue'] as String),
    );

Map<String, dynamic> _$$StudentIdsIdCardUpdatePublicImplToJson(
        _$StudentIdsIdCardUpdatePublicImpl instance) =>
    <String, dynamic>{
      'identification_card_number': instance.identificationCardNumber,
      'identification_card_record': instance.identificationCardRecord,
      'identification_card_page': instance.identificationCardPage,
      'identification_card_issuing_authority':
          instance.identificationCardIssuingAuthority,
      'identification_card_date_of_issue':
          instance.identificationCardDateOfIssue.toIso8601String(),
    };
