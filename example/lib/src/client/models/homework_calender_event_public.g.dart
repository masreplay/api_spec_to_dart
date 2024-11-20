// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homework_calender_event_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeworkCalenderEventPublicImpl _$$HomeworkCalenderEventPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeworkCalenderEventPublicImpl(
      id: (json['id'] as num).toInt(),
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      startDateFormatted: json['start_date_formatted'] as String?,
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      endDateFormatted: json['end_date_formatted'] as String?,
      type: json['type'] as String? ?? String.assignment,
      title: json['title'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$HomeworkCalenderEventPublicImplToJson(
        _$HomeworkCalenderEventPublicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start_date': instance.startDate?.toIso8601String(),
      'start_date_formatted': instance.startDateFormatted,
      'end_date': instance.endDate?.toIso8601String(),
      'end_date_formatted': instance.endDateFormatted,
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
    };
