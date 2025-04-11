// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_depends_query_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdvancedDependsQueryQueries _$AdvancedDependsQueryQueriesFromJson(
  Map<String, dynamic> json,
) => _AdvancedDependsQueryQueries(
  q: json['q'] as String?,
  skip: (json['skip'] as num?)?.toInt() ?? 0,
  limit: (json['limit'] as num?)?.toInt() ?? 100,
);

Map<String, dynamic> _$AdvancedDependsQueryQueriesToJson(
  _AdvancedDependsQueryQueries instance,
) => <String, dynamic>{
  'q': instance.q,
  'skip': instance.skip,
  'limit': instance.limit,
};
