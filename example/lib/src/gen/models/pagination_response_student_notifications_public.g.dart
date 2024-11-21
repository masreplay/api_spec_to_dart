// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_response_student_notifications_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationResponseStudentNotificationsPublicImpl
    _$$PaginationResponseStudentNotificationsPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$PaginationResponseStudentNotificationsPublicImpl(
          page: (json['page'] as num).toInt(),
          perPage: (json['per_page'] as num).toInt(),
          total: (json['total'] as num).toInt(),
          data: (json['data'] as List<dynamic>)
              .map((e) => StudentNotificationsPublic.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$PaginationResponseStudentNotificationsPublicImplToJson(
        _$PaginationResponseStudentNotificationsPublicImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total': instance.total,
      'data': instance.data,
    };
