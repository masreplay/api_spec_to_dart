// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_student_notifications_public_none_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionStudentNotificationsPublicNoneTypeImpl
    _$$BaseResponseUnionStudentNotificationsPublicNoneTypeImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionStudentNotificationsPublicNoneTypeImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : StudentNotificationsPublic.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String,
    dynamic> _$$BaseResponseUnionStudentNotificationsPublicNoneTypeImplToJson(
        _$BaseResponseUnionStudentNotificationsPublicNoneTypeImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
