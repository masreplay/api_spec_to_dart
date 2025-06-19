// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_depends_query_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdvancedDependsQueryQueryParameters
    _$AdvancedDependsQueryQueryParametersFromJson(Map<String, dynamic> json) =>
        _AdvancedDependsQueryQueryParameters(
          q: json['q'] as String?,
          skip: (json['skip'] as num?)?.toInt() ?? 0,
          limit: (json['limit'] as num?)?.toInt() ?? 100,
        );

Map<String, dynamic> _$AdvancedDependsQueryQueryParametersToJson(
        _AdvancedDependsQueryQueryParameters instance) =>
    <String, dynamic>{
      if (instance.q case final value?) 'q': value,
      'skip': instance.skip,
      'limit': instance.limit,
    };
