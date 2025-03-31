// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_read_items_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemsReadItemsQueries _$ItemsReadItemsQueriesFromJson(
  Map<String, dynamic> json,
) => _ItemsReadItemsQueries(
  skip: (json['skip'] as num?)?.toInt() ?? 0,
  limit: (json['limit'] as num?)?.toInt() ?? 100,
);

Map<String, dynamic> _$ItemsReadItemsQueriesToJson(
  _ItemsReadItemsQueries instance,
) => <String, dynamic>{'skip': instance.skip, 'limit': instance.limit};
