// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_pagination_response_lecturer_announcement_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponsePaginationResponseLecturerAnnouncementPublicImpl
    _$$BaseResponsePaginationResponseLecturerAnnouncementPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponsePaginationResponseLecturerAnnouncementPublicImpl(
          message: json['message'] as String?,
          data: PaginationResponseLecturerAnnouncementPublic.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$BaseResponsePaginationResponseLecturerAnnouncementPublicImplToJson(
            _$BaseResponsePaginationResponseLecturerAnnouncementPublicImpl
                instance) =>
        <String, dynamic>{
          'message': instance.message,
          'data': instance.data,
        };
