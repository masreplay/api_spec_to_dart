// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_student_notifications_public_.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionStudentNotificationsPublicImpl
    _$$BaseResponseUnionStudentNotificationsPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionStudentNotificationsPublicImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : StudentNotificationsPublic.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseUnionStudentNotificationsPublicImplToJson(
        _$BaseResponseUnionStudentNotificationsPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
