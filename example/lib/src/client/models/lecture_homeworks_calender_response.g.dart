// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecture_homeworks_calender_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LectureHomeworksCalenderResponseImpl
    _$$LectureHomeworksCalenderResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$LectureHomeworksCalenderResponseImpl(
          events: (json['events'] as List<dynamic>)
              .map((e) => HomeworkCalenderEventPublic.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$LectureHomeworksCalenderResponseImplToJson(
        _$LectureHomeworksCalenderResponseImpl instance) =>
    <String, dynamic>{
      'events': instance.events,
    };
