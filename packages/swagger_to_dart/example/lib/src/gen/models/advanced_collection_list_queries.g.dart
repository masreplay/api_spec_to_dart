// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_collection_list_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdvancedCollectionListQueries _$AdvancedCollectionListQueriesFromJson(
  Map<String, dynamic> json,
) => _AdvancedCollectionListQueries(
  items:
      (json['items'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const ['default'],
);

Map<String, dynamic> _$AdvancedCollectionListQueriesToJson(
  _AdvancedCollectionListQueries instance,
) => <String, dynamic>{'items': instance.items};
