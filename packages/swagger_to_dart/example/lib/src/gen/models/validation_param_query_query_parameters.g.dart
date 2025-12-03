// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_param_query_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ValidationParamQueryQueryParameters
    _$ValidationParamQueryQueryParametersFromJson(Map<String, dynamic> json) =>
        _ValidationParamQueryQueryParameters(
          q: json['q'] as String?,
          skip: (json['skip'] as num?)?.toInt() ?? 0,
          limit: (json['limit'] as num?)?.toInt() ?? 10,
        );

Map<String, dynamic> _$ValidationParamQueryQueryParametersToJson(
        _ValidationParamQueryQueryParameters instance) =>
    <String, dynamic>{
      if (instance.q case final value?) 'q': value,
      'skip': instance.skip,
      'limit': instance.limit,
    };
