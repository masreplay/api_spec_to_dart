// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_school_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentSchoolInfoResponseImpl _$$StudentSchoolInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentSchoolInfoResponseImpl(
      schoolName: json['school_name'] as String?,
      examNumber: json['exam_number'] as String?,
      studyYearId: (json['study_year_id'] as num?)?.toInt(),
      governorateId: (json['governorate_id'] as num?)?.toInt(),
      directorateName: json['directorate_name'] as String?,
      specializationId: (json['specialization_id'] as num?)?.toInt(),
      average: json['average'] as num?,
      total: json['total'] as num?,
      round: (json['round'] as num?)?.toInt(),
      numberOfFailureYears: (json['number_of_failure_years'] as num?)?.toInt(),
      hasTheCertificateBeenVerified:
          json['has_the_certificate_been_verified'] as bool,
      notes: json['notes'] as String?,
      id: (json['id'] as num).toInt(),
      universityId: (json['university_id'] as num?)?.toInt(),
      isIraqi: json['is_iraqi'] as bool?,
      hasNationalCard: json['has_national_card'] as bool?,
      studyYear: json['study_year'] == null
          ? null
          : StudyYearPublic.fromJson(
              json['study_year'] as Map<String, dynamic>),
      governorate: json['governorate'] == null
          ? null
          : GovernoratePublic.fromJson(
              json['governorate'] as Map<String, dynamic>),
      specialization: json['specialization'] == null
          ? null
          : SpecializationPublic.fromJson(
              json['specialization'] as Map<String, dynamic>),
      frontImage: json['front_image'] == null
          ? null
          : FilePublic.fromJson(json['front_image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StudentSchoolInfoResponseImplToJson(
        _$StudentSchoolInfoResponseImpl instance) =>
    <String, dynamic>{
      'school_name': instance.schoolName,
      'exam_number': instance.examNumber,
      'study_year_id': instance.studyYearId,
      'governorate_id': instance.governorateId,
      'directorate_name': instance.directorateName,
      'specialization_id': instance.specializationId,
      'average': instance.average,
      'total': instance.total,
      'round': instance.round,
      'number_of_failure_years': instance.numberOfFailureYears,
      'has_the_certificate_been_verified':
          instance.hasTheCertificateBeenVerified,
      'notes': instance.notes,
      'id': instance.id,
      'university_id': instance.universityId,
      'is_iraqi': instance.isIraqi,
      'has_national_card': instance.hasNationalCard,
      'study_year': instance.studyYear,
      'governorate': instance.governorate,
      'specialization': instance.specialization,
      'front_image': instance.frontImage,
    };
