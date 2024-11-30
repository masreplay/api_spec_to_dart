// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_response_lecturer_assignment_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationResponseLecturerAssignmentPublicImpl
    _$$PaginationResponseLecturerAssignmentPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$PaginationResponseLecturerAssignmentPublicImpl(
          page: (json['page'] as num).toInt(),
          perPage: (json['per_page'] as num).toInt(),
          total: (json['total'] as num).toInt(),
          data: (json['data'] as List<dynamic>)
              .map((e) =>
                  LecturerAssignmentPublic.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$PaginationResponseLecturerAssignmentPublicImplToJson(
        _$PaginationResponseLecturerAssignmentPublicImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total': instance.total,
      'data': instance.data,
    };
