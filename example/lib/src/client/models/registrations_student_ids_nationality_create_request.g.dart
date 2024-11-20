// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registrations_student_ids_nationality_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationsStudentIdsNationalityCreateRequestImpl
    _$$RegistrationsStudentIdsNationalityCreateRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$RegistrationsStudentIdsNationalityCreateRequestImpl(
          nationalCard: StudentIdsNationalCardUpdatePublic.fromJson(
              json['national_card'] as Map<String, dynamic>),
          residenceCard: StudentIdsIraqiResidenceCardUpdatePublic.fromJson(
              json['residence_card'] as Map<String, dynamic>),
          passport: json['passport'] == null
              ? null
              : StudentIdsPassportUpdatePublic.fromJson(
                  json['passport'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$RegistrationsStudentIdsNationalityCreateRequestImplToJson(
            _$RegistrationsStudentIdsNationalityCreateRequestImpl instance) =>
        <String, dynamic>{
          'national_card': instance.nationalCard,
          'residence_card': instance.residenceCard,
          'passport': instance.passport,
        };
