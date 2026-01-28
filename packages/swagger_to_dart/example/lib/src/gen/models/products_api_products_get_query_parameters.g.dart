// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_api_products_get_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductsApiProductsGetQueryParameters
    _$ProductsApiProductsGetQueryParametersFromJson(
            Map<String, dynamic> json) =>
        _ProductsApiProductsGetQueryParameters(
          pageToken: json['pageToken'] as String?,
          pageSize: (json['pageSize'] as num?)?.toInt() ?? 100,
          categoryId: json['categoryId'] as String?,
          search: json['search'] as String?,
          priceListId: json['priceListId'] as String?,
          replacePrices: json['replacePrices'] as bool? ?? false,
        );

Map<String, dynamic> _$ProductsApiProductsGetQueryParametersToJson(
        _ProductsApiProductsGetQueryParameters instance) =>
    <String, dynamic>{
      if (instance.pageToken case final value?) 'pageToken': value,
      'pageSize': instance.pageSize,
      if (instance.categoryId case final value?) 'categoryId': value,
      if (instance.search case final value?) 'search': value,
      if (instance.priceListId case final value?) 'priceListId': value,
      'replacePrices': instance.replacePrices,
    };
