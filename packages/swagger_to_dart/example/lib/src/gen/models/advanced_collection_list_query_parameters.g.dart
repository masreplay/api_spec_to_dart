// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_collection_list_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdvancedCollectionListQueryParameters
    _$AdvancedCollectionListQueryParametersFromJson(
            Map<String, dynamic> json) =>
        _AdvancedCollectionListQueryParameters(
          items: (json['items'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const ['default'],
        );

Map<String, dynamic> _$AdvancedCollectionListQueryParametersToJson(
        _AdvancedCollectionListQueryParameters instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
