// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_pagination_response_student_notifications_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponsePaginationResponseStudentNotificationsPublicImpl
    _$$BaseResponsePaginationResponseStudentNotificationsPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponsePaginationResponseStudentNotificationsPublicImpl(
          message: json['message'] as String?,
          data: PaginationResponseStudentNotificationsPublic.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$BaseResponsePaginationResponseStudentNotificationsPublicImplToJson(
            _$BaseResponsePaginationResponseStudentNotificationsPublicImpl
                instance) =>
        <String, dynamic>{
          'message': instance.message,
          'data': instance.data,
        };
