// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_student_selected_courses_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseStudentSelectedCoursesPublicImpl
    _$$BaseResponseStudentSelectedCoursesPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseStudentSelectedCoursesPublicImpl(
          message: json['message'] as String?,
          data: StudentSelectedCoursesPublic.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseStudentSelectedCoursesPublicImplToJson(
        _$BaseResponseStudentSelectedCoursesPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
