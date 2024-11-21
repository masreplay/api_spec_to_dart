// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_university_card_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentUniversityCardPublicImpl _$$StudentUniversityCardPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentUniversityCardPublicImpl(
      id: (json['id'] as num).toInt(),
      organizationArName: json['organization_ar_name'] as String?,
      organizationEnName: json['organization_en_name'] as String?,
      cardNumber: json['card_number'] as String?,
      englishFullName: json['english_full_name'] as String?,
      arabicFullName: json['arabic_full_name'] as String?,
      colOrDepEn: json['col_or_dep_en'] as String?,
      colOrDepAr: json['col_or_dep_ar'] as String?,
      stageEn: json['stage_en'] as String?,
      stageAr: json['stage_ar'] as String?,
      birthDate: json['birth_date'] as String?,
      issuingDate: json['issuing_date'] as String?,
      expireDate: json['expire_date'] as String?,
      countryNameAr: json['country_name_ar'] as String?,
      countryNameEn: json['country_name_en'] as String?,
      ministryNameAr: json['ministry_name_ar'] as String?,
      ministryNameEn: json['ministry_name_en'] as String?,
      ministryLogoUrl: json['ministry_logo_url'] as String,
      personalImage: json['personal_image'] as String,
    );

Map<String, dynamic> _$$StudentUniversityCardPublicImplToJson(
        _$StudentUniversityCardPublicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organization_ar_name': instance.organizationArName,
      'organization_en_name': instance.organizationEnName,
      'card_number': instance.cardNumber,
      'english_full_name': instance.englishFullName,
      'arabic_full_name': instance.arabicFullName,
      'col_or_dep_en': instance.colOrDepEn,
      'col_or_dep_ar': instance.colOrDepAr,
      'stage_en': instance.stageEn,
      'stage_ar': instance.stageAr,
      'birth_date': instance.birthDate,
      'issuing_date': instance.issuingDate,
      'expire_date': instance.expireDate,
      'country_name_ar': instance.countryNameAr,
      'country_name_en': instance.countryNameEn,
      'ministry_name_ar': instance.ministryNameAr,
      'ministry_name_en': instance.ministryNameEn,
      'ministry_logo_url': instance.ministryLogoUrl,
      'personal_image': instance.personalImage,
    };
