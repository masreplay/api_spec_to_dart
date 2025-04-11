// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_param_query_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ValidationParamQueryQueries _$ValidationParamQueryQueriesFromJson(
  Map<String, dynamic> json,
) => _ValidationParamQueryQueries(
  q: json['q'] as String?,
  skip: (json['skip'] as num?)?.toInt() ?? 0,
  limit: (json['limit'] as num?)?.toInt() ?? 10,
);

Map<String, dynamic> _$ValidationParamQueryQueriesToJson(
  _ValidationParamQueryQueries instance,
) => <String, dynamic>{
  'q': instance.q,
  'skip': instance.skip,
  'limit': instance.limit,
};
