// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_fees_read_fees_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentFeesReadFeesQueriesImpl _$$StudentFeesReadFeesQueriesImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentFeesReadFeesQueriesImpl(
      feesTypeId: (json['feesTypeId'] as num?)?.toInt(),
      studyYearId: (json['studyYearId'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt() ?? 1,
      perPage: (json['perPage'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$$StudentFeesReadFeesQueriesImplToJson(
        _$StudentFeesReadFeesQueriesImpl instance) =>
    <String, dynamic>{
      'feesTypeId': instance.feesTypeId,
      'studyYearId': instance.studyYearId,
      'page': instance.page,
      'perPage': instance.perPage,
    };
