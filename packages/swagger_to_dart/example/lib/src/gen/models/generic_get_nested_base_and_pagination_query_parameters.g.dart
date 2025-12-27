// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_get_nested_base_and_pagination_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GenericGetNestedBaseAndPaginationQueryParameters
    _$GenericGetNestedBaseAndPaginationQueryParametersFromJson(
            Map<String, dynamic> json) =>
        _GenericGetNestedBaseAndPaginationQueryParameters(
          page: (json['page'] as num?)?.toInt() ?? 1,
          perPage: (json['per_page'] as num?)?.toInt() ?? 10,
        );

Map<String, dynamic> _$GenericGetNestedBaseAndPaginationQueryParametersToJson(
        _GenericGetNestedBaseAndPaginationQueryParameters instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
    };
