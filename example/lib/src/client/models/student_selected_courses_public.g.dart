// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_selected_courses_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentSelectedCoursesPublicImpl _$$StudentSelectedCoursesPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentSelectedCoursesPublicImpl(
      studentId: (json['student_id'] as num).toInt(),
      finalGrade: json['final_grade'] as num,
      courseResult: (json['course_result'] as num).toInt(),
      attempt: (json['attempt'] as num).toInt(),
      selectedDateTime: DateTime.parse(json['selected_date_time'] as String),
      studentCourseStatus: (json['student_course_status'] as num).toInt(),
      academicTerms: (json['academic_terms'] as num).toInt(),
      grade: (json['grade'] as num).toInt(),
      studyYearId: (json['study_year_id'] as num).toInt(),
      courseDistributionId: (json['course_distribution_id'] as num).toInt(),
      creationTime: DateTime.parse(json['creation_time'] as String),
      courseId: (json['course_id'] as num).toInt(),
      studentAcademicStatusId:
          (json['student_academic_status_id'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      course: json['course'] == null
          ? null
          : CourseTable.fromJson(json['course'] as Map<String, dynamic>),
      courseDistribution: json['course_distribution'] == null
          ? null
          : CourseDistributionsTable.fromJson(
              json['course_distribution'] as Map<String, dynamic>),
      result: json['result'] == null
          ? 1
          : SelectedCourseResultEnum.fromJson(
              json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StudentSelectedCoursesPublicImplToJson(
        _$StudentSelectedCoursesPublicImpl instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'final_grade': instance.finalGrade,
      'course_result': instance.courseResult,
      'attempt': instance.attempt,
      'selected_date_time': instance.selectedDateTime.toIso8601String(),
      'student_course_status': instance.studentCourseStatus,
      'academic_terms': instance.academicTerms,
      'grade': instance.grade,
      'study_year_id': instance.studyYearId,
      'course_distribution_id': instance.courseDistributionId,
      'creation_time': instance.creationTime.toIso8601String(),
      'course_id': instance.courseId,
      'student_academic_status_id': instance.studentAcademicStatusId,
      'id': instance.id,
      'course': instance.course,
      'course_distribution': instance.courseDistribution,
      'result': instance.result,
    };
