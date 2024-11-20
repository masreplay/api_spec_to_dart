// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_registration_school_info_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentRegistrationSchoolInfoUpdateRequestImpl
    _$$StudentRegistrationSchoolInfoUpdateRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$StudentRegistrationSchoolInfoUpdateRequestImpl(
          schoolName: json['school_name'] as String?,
          examNumber: json['exam_number'] as String,
          studyYearId: (json['study_year_id'] as num?)?.toInt(),
          directorateName: json['directorate_name'] as String?,
          average: json['average'] as num?,
          total: json['total'] as num?,
          round: (json['round'] as num?)?.toInt(),
          numberOfFailureYears:
              (json['number_of_failure_years'] as num?)?.toInt(),
          governorateId: (json['governorate_id'] as num?)?.toInt(),
          specializationId: (json['specialization_id'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$StudentRegistrationSchoolInfoUpdateRequestImplToJson(
        _$StudentRegistrationSchoolInfoUpdateRequestImpl instance) =>
    <String, dynamic>{
      'school_name': instance.schoolName,
      'exam_number': instance.examNumber,
      'study_year_id': instance.studyYearId,
      'directorate_name': instance.directorateName,
      'average': instance.average,
      'total': instance.total,
      'round': instance.round,
      'number_of_failure_years': instance.numberOfFailureYears,
      'governorate_id': instance.governorateId,
      'specialization_id': instance.specializationId,
    };
