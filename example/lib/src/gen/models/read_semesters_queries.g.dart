// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_semesters_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadSemestersQueriesImpl _$$ReadSemestersQueriesImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadSemestersQueriesImpl(
      filter: json['filter'] == null
          ? SemesterFilter.all
          : SemesterFilter.fromJson(json['filter'] as String),
    );

Map<String, dynamic> _$$ReadSemestersQueriesImplToJson(
        _$ReadSemestersQueriesImpl instance) =>
    <String, dynamic>{
      'filter': instance.filter,
    };
