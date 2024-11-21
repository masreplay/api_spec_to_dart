// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_ids_national_card_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentIdsNationalCardPublicImpl _$$StudentIdsNationalCardPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentIdsNationalCardPublicImpl(
      number: json['number'] as String?,
      serialNumber: json['serial_number'] as String?,
      issuingAuthority: json['issuing_authority'] as String?,
      dateOfIssue: json['date_of_issue'] == null
          ? null
          : DateTime.parse(json['date_of_issue'] as String),
      dateOfExpiry: json['date_of_expiry'] == null
          ? null
          : DateTime.parse(json['date_of_expiry'] as String),
      familyNumber: json['family_number'] as String?,
      frontImage: json['front_image'] == null
          ? null
          : FilePublic.fromJson(json['front_image'] as Map<String, dynamic>),
      backImage: json['back_image'] == null
          ? null
          : FilePublic.fromJson(json['back_image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StudentIdsNationalCardPublicImplToJson(
        _$StudentIdsNationalCardPublicImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'serial_number': instance.serialNumber,
      'issuing_authority': instance.issuingAuthority,
      'date_of_issue': instance.dateOfIssue?.toIso8601String(),
      'date_of_expiry': instance.dateOfExpiry?.toIso8601String(),
      'family_number': instance.familyNumber,
      'front_image': instance.frontImage,
      'back_image': instance.backImage,
    };
