// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_lecturer_announcement_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseLecturerAnnouncementPublicImpl
    _$$BaseResponseLecturerAnnouncementPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseLecturerAnnouncementPublicImpl(
          message: json['message'] as String?,
          data: LecturerAnnouncementPublic.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseLecturerAnnouncementPublicImplToJson(
        _$BaseResponseLecturerAnnouncementPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
