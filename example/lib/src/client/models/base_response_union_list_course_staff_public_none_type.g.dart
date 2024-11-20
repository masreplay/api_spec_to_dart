// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_list_course_staff_public_none_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionListCourseStaffPublicNoneTypeImpl
    _$$BaseResponseUnionListCourseStaffPublicNoneTypeImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionListCourseStaffPublicNoneTypeImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => CourseStaffPublic.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$$BaseResponseUnionListCourseStaffPublicNoneTypeImplToJson(
            _$BaseResponseUnionListCourseStaffPublicNoneTypeImpl instance) =>
        <String, dynamic>{
          'message': instance.message,
          'data': instance.data,
        };
