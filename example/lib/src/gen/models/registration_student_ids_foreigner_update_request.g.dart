// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_student_ids_foreigner_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationStudentIdsForeignerUpdateRequestImpl
    _$$RegistrationStudentIdsForeignerUpdateRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$RegistrationStudentIdsForeignerUpdateRequestImpl(
          nationalCard: StudentIdsNationalCardUpdatePublic.fromJson(
              json['national_card'] as Map<String, dynamic>),
          passport: StudentIdsPassportUpdatePublic.fromJson(
              json['passport'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$RegistrationStudentIdsForeignerUpdateRequestImplToJson(
        _$RegistrationStudentIdsForeignerUpdateRequestImpl instance) =>
    <String, dynamic>{
      'national_card': instance.nationalCard,
      'passport': instance.passport,
    };
