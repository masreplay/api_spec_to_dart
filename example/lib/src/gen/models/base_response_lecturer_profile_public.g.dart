// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_lecturer_profile_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseLecturerProfilePublicImpl
    _$$BaseResponseLecturerProfilePublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseLecturerProfilePublicImpl(
          message: json['message'] as String?,
          data: LecturerProfilePublic.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseLecturerProfilePublicImplToJson(
        _$BaseResponseLecturerProfilePublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
