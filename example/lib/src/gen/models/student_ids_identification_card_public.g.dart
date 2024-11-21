// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_ids_identification_card_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentIdsIdentificationCardPublicImpl
    _$$StudentIdsIdentificationCardPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$StudentIdsIdentificationCardPublicImpl(
          number: json['number'] as String?,
          record: json['record'] as String?,
          page: json['page'] as String?,
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

Map<String, dynamic> _$$StudentIdsIdentificationCardPublicImplToJson(
        _$StudentIdsIdentificationCardPublicImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'record': instance.record,
      'page': instance.page,
      'issuing_authority': instance.issuingAuthority,
      'date_of_issue': instance.dateOfIssue?.toIso8601String(),
      'front_image': instance.frontImage,
      'back_image': instance.backImage,
    };
