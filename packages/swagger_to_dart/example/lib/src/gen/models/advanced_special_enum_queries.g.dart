// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_special_enum_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdvancedSpecialEnumQueries _$AdvancedSpecialEnumQueriesFromJson(
  Map<String, dynamic> json,
) => _AdvancedSpecialEnumQueries(
  level:
      json['level'] == null
          ? UserLevel.basic
          : UserLevel.fromJson(json['level'] as String),
);

Map<String, dynamic> _$AdvancedSpecialEnumQueriesToJson(
  _AdvancedSpecialEnumQueries instance,
) => <String, dynamic>{'level': instance.level};
