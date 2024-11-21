// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_fees_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadFeesQueriesImpl _$$ReadFeesQueriesImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadFeesQueriesImpl(
      feesTypeId: (json['feesTypeId'] as num?)?.toInt(),
      studyYearId: (json['studyYearId'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt() ?? 1,
      perPage: (json['perPage'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$$ReadFeesQueriesImplToJson(
        _$ReadFeesQueriesImpl instance) =>
    <String, dynamic>{
      'feesTypeId': instance.feesTypeId,
      'studyYearId': instance.studyYearId,
      'page': instance.page,
      'perPage': instance.perPage,
    };
