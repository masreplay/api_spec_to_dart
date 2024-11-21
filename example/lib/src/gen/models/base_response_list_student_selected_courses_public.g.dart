// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_list_student_selected_courses_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseListStudentSelectedCoursesPublicImpl
    _$$BaseResponseListStudentSelectedCoursesPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseListStudentSelectedCoursesPublicImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>)
              .map((e) => StudentSelectedCoursesPublic.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BaseResponseListStudentSelectedCoursesPublicImplToJson(
        _$BaseResponseListStudentSelectedCoursesPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
