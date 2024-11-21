// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_list_study_year_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseListStudyYearPublicImpl
    _$$BaseResponseListStudyYearPublicImplFromJson(Map<String, dynamic> json) =>
        _$BaseResponseListStudyYearPublicImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>)
              .map((e) => StudyYearPublic.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BaseResponseListStudyYearPublicImplToJson(
        _$BaseResponseListStudyYearPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
