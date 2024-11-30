// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_list_course_staff_public_.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionListCourseStaffPublicImpl
    _$$BaseResponseUnionListCourseStaffPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionListCourseStaffPublicImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => CourseStaffPublic.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BaseResponseUnionListCourseStaffPublicImplToJson(
        _$BaseResponseUnionListCourseStaffPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
