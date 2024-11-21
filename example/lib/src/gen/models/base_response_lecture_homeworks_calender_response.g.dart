// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_lecture_homeworks_calender_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseLectureHomeworksCalenderResponseImpl
    _$$BaseResponseLectureHomeworksCalenderResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseLectureHomeworksCalenderResponseImpl(
          message: json['message'] as String?,
          data: LectureHomeworksCalenderResponse.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseLectureHomeworksCalenderResponseImplToJson(
        _$BaseResponseLectureHomeworksCalenderResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
