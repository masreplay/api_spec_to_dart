// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_lecturer_assignment_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseLecturerAssignmentPublicImpl
    _$$BaseResponseLecturerAssignmentPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseLecturerAssignmentPublicImpl(
          message: json['message'] as String?,
          data: LecturerAssignmentPublic.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseLecturerAssignmentPublicImplToJson(
        _$BaseResponseLecturerAssignmentPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
