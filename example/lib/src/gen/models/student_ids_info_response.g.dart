// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_ids_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentIdsInfoResponseImpl _$$StudentIdsInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentIdsInfoResponseImpl(
      isIraqi: json['is_iraqi'] as bool?,
      haveNationalCard: json['have_national_card'] as bool?,
      nationalCard: StudentIdsNationalCardPublic.fromJson(
          json['national_card'] as Map<String, dynamic>),
      identificationCard: StudentIdsIdentificationCardPublic.fromJson(
          json['identification_card'] as Map<String, dynamic>),
      iraqiNationalityCertificate:
          StudentIdsIraqiNationalityCertificatePublic.fromJson(
              json['iraqi_nationality_certificate'] as Map<String, dynamic>),
      iraqiResidenceCard: StudentIdsIraqiResidenceCardPublic.fromJson(
          json['iraqi_residence_card'] as Map<String, dynamic>),
      passport: StudentIdsPassportPublic.fromJson(
          json['passport'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StudentIdsInfoResponseImplToJson(
        _$StudentIdsInfoResponseImpl instance) =>
    <String, dynamic>{
      'is_iraqi': instance.isIraqi,
      'have_national_card': instance.haveNationalCard,
      'national_card': instance.nationalCard,
      'identification_card': instance.identificationCard,
      'iraqi_nationality_certificate': instance.iraqiNationalityCertificate,
      'iraqi_residence_card': instance.iraqiResidenceCard,
      'passport': instance.passport,
    };
