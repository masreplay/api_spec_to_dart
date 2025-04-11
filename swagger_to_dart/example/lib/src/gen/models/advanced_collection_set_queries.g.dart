// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_collection_set_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdvancedCollectionSetQueries _$AdvancedCollectionSetQueriesFromJson(
  Map<String, dynamic> json,
) => _AdvancedCollectionSetQueries(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [1, 2, 3],
);

Map<String, dynamic> _$AdvancedCollectionSetQueriesToJson(
  _AdvancedCollectionSetQueries instance,
) => <String, dynamic>{'items': instance.items};
