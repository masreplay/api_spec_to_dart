// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_feed_summery_section_data_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeFeedSummerySectionDataPublicImpl
    _$$HomeFeedSummerySectionDataPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$HomeFeedSummerySectionDataPublicImpl(
          coursesCount: (json['courses_count'] as num).toInt(),
          coursesCountFormatted: json['courses_count_formatted'] as String,
          coursesCompletedUnitsCount:
              (json['courses_completed_units_count'] as num).toInt(),
          coursesUnitsCount: (json['courses_units_count'] as num).toInt(),
          coursesUnitsFormatted: json['courses_units_formatted'] as String,
        );

Map<String, dynamic> _$$HomeFeedSummerySectionDataPublicImplToJson(
        _$HomeFeedSummerySectionDataPublicImpl instance) =>
    <String, dynamic>{
      'courses_count': instance.coursesCount,
      'courses_count_formatted': instance.coursesCountFormatted,
      'courses_completed_units_count': instance.coursesCompletedUnitsCount,
      'courses_units_count': instance.coursesUnitsCount,
      'courses_units_formatted': instance.coursesUnitsFormatted,
    };
