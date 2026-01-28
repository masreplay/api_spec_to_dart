// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_lists_api_price_lists_get_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PriceListsApiPriceListsGetQueryParameters
    _$PriceListsApiPriceListsGetQueryParametersFromJson(
            Map<String, dynamic> json) =>
        _PriceListsApiPriceListsGetQueryParameters(
          enabled: json['enabled'] as bool?,
          salePointId: json['salePointId'] as String?,
        );

Map<String, dynamic> _$PriceListsApiPriceListsGetQueryParametersToJson(
        _PriceListsApiPriceListsGetQueryParameters instance) =>
    <String, dynamic>{
      if (instance.enabled case final value?) 'enabled': value,
      if (instance.salePointId case final value?) 'salePointId': value,
    };
