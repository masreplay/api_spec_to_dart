// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_student_os_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseStudentOSPublicImpl _$$BaseResponseStudentOSPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseResponseStudentOSPublicImpl(
      message: json['message'] as String?,
      data: StudentOSPublic.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BaseResponseStudentOSPublicImplToJson(
        _$BaseResponseStudentOSPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
