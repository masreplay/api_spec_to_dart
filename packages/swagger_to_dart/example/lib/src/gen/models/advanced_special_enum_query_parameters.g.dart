// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_special_enum_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdvancedSpecialEnumQueryParameters
    _$AdvancedSpecialEnumQueryParametersFromJson(Map<String, dynamic> json) =>
        _AdvancedSpecialEnumQueryParameters(
          level: json['level'] == null
              ? UserLevel.basic
              : UserLevel.fromJson(json['level'] as String),
        );

Map<String, dynamic> _$AdvancedSpecialEnumQueryParametersToJson(
        _AdvancedSpecialEnumQueryParameters instance) =>
    <String, dynamic>{
      'level': instance.level.toJson(),
    };
