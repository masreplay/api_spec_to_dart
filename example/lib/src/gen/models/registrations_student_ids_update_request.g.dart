// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registrations_student_ids_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationsStudentIdsUpdateRequestImpl
    _$$RegistrationsStudentIdsUpdateRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$RegistrationsStudentIdsUpdateRequestImpl(
          identificationCard: StudentIdsIdCardUpdatePublic.fromJson(
              json['identification_card'] as Map<String, dynamic>),
          iraqiNationalityCertificate:
              StudentIdsIraqiNationalityCertificateUpdatePublic.fromJson(
                  json['iraqi_nationality_certificate']
                      as Map<String, dynamic>),
          residenceCard: StudentIdsIraqiResidenceCardUpdatePublic.fromJson(
              json['residence_card'] as Map<String, dynamic>),
          passport: json['passport'] == null
              ? null
              : StudentIdsPassportUpdatePublic.fromJson(
                  json['passport'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$RegistrationsStudentIdsUpdateRequestImplToJson(
        _$RegistrationsStudentIdsUpdateRequestImpl instance) =>
    <String, dynamic>{
      'identification_card': instance.identificationCard,
      'iraqi_nationality_certificate': instance.iraqiNationalityCertificate,
      'residence_card': instance.residenceCard,
      'passport': instance.passport,
    };
