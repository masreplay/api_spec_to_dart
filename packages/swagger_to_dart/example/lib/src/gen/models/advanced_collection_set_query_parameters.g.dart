// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_collection_set_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdvancedCollectionSetQueryParameters
    _$AdvancedCollectionSetQueryParametersFromJson(Map<String, dynamic> json) =>
        _AdvancedCollectionSetQueryParameters(
          items: (json['items'] as List<dynamic>?)
                  ?.map((e) => (e as num).toInt())
                  .toList() ??
              const [1, 2, 3],
        );

Map<String, dynamic> _$AdvancedCollectionSetQueryParametersToJson(
        _AdvancedCollectionSetQueryParameters instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
