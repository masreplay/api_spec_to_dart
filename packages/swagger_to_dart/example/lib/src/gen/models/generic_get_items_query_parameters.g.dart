// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_get_items_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GenericGetItemsQueryParameters _$GenericGetItemsQueryParametersFromJson(
  Map<String, dynamic> json,
) => _GenericGetItemsQueryParameters(
  page: (json['page'] as num?)?.toInt() ?? 1,
  perPage: (json['per_page'] as num?)?.toInt() ?? 10,
);

Map<String, dynamic> _$GenericGetItemsQueryParametersToJson(
  _GenericGetItemsQueryParameters instance,
) => <String, dynamic>{'page': instance.page, 'per_page': instance.perPage};
