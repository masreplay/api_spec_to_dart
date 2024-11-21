// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetQueriesImpl _$$GetQueriesImplFromJson(Map<String, dynamic> json) =>
    _$GetQueriesImpl(
      page: (json['page'] as num?)?.toInt() ?? 1,
      perPage: (json['perPage'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$$GetQueriesImplToJson(_$GetQueriesImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'perPage': instance.perPage,
    };
