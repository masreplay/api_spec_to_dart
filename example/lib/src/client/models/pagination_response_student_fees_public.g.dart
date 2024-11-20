// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_response_student_fees_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationResponseStudentFeesPublicImpl
    _$$PaginationResponseStudentFeesPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$PaginationResponseStudentFeesPublicImpl(
          page: (json['page'] as num).toInt(),
          perPage: (json['per_page'] as num).toInt(),
          total: (json['total'] as num).toInt(),
          data: json['data'] as List<dynamic>,
        );

Map<String, dynamic> _$$PaginationResponseStudentFeesPublicImplToJson(
        _$PaginationResponseStudentFeesPublicImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total': instance.total,
      'data': instance.data,
    };
