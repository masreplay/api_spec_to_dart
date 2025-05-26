// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_get_categories_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GenericGetCategoriesQueryParameters
_$GenericGetCategoriesQueryParametersFromJson(Map<String, dynamic> json) =>
    _GenericGetCategoriesQueryParameters(
      page: (json['page'] as num?)?.toInt() ?? 1,
      perPage: (json['per_page'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$GenericGetCategoriesQueryParametersToJson(
  _GenericGetCategoriesQueryParameters instance,
) => <String, dynamic>{'page': instance.page, 'per_page': instance.perPage};
