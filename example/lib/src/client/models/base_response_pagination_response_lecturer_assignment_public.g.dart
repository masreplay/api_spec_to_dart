// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_pagination_response_lecturer_assignment_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponsePaginationResponseLecturerAssignmentPublicImpl
    _$$BaseResponsePaginationResponseLecturerAssignmentPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponsePaginationResponseLecturerAssignmentPublicImpl(
          message: json['message'] as String?,
          data: PaginationResponseLecturerAssignmentPublic.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$BaseResponsePaginationResponseLecturerAssignmentPublicImplToJson(
            _$BaseResponsePaginationResponseLecturerAssignmentPublicImpl
                instance) =>
        <String, dynamic>{
          'message': instance.message,
          'data': instance.data,
        };
