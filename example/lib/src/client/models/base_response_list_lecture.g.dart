// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_list_lecture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseListLectureImpl _$$BaseResponseListLectureImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseResponseListLectureImpl(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>)
          .map((e) => AppApiRoutesV1StudentAttendanceRouteLecture.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BaseResponseListLectureImplToJson(
        _$BaseResponseListLectureImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
