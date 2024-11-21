// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_ids_passport_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentIdsPassportPublicImpl _$$StudentIdsPassportPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentIdsPassportPublicImpl(
      number: json['number'] as String?,
      issuingAuthority: json['issuing_authority'] as String?,
      dateOfIssue: json['date_of_issue'] == null
          ? null
          : DateTime.parse(json['date_of_issue'] as String),
      dateOfExpiry: json['date_of_expiry'] == null
          ? null
          : DateTime.parse(json['date_of_expiry'] as String),
      country: json['country'] == null
          ? null
          : CountryPublic.fromJson(json['country'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : FilePublic.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StudentIdsPassportPublicImplToJson(
        _$StudentIdsPassportPublicImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'issuing_authority': instance.issuingAuthority,
      'date_of_issue': instance.dateOfIssue?.toIso8601String(),
      'date_of_expiry': instance.dateOfExpiry?.toIso8601String(),
      'country': instance.country,
      'image': instance.image,
    };
