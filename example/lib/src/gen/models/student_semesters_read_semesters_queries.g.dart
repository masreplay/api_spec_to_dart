// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_semesters_read_semesters_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentSemestersReadSemestersQueriesImpl
    _$$StudentSemestersReadSemestersQueriesImplFromJson(
            Map<String, dynamic> json) =>
        _$StudentSemestersReadSemestersQueriesImpl(
          filter: json['filter'] == null
              ? SemesterFilter.all
              : SemesterFilter.fromJson(json['filter'] as String),
        );

Map<String, dynamic> _$$StudentSemestersReadSemestersQueriesImplToJson(
        _$StudentSemestersReadSemestersQueriesImpl instance) =>
    <String, dynamic>{
      'filter': instance.filter,
    };
