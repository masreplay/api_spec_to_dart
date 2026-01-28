// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customers_api_customers_get_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomersApiCustomersGetQueryParameters
    _$CustomersApiCustomersGetQueryParametersFromJson(
            Map<String, dynamic> json) =>
        _CustomersApiCustomersGetQueryParameters(
          search: json['search'] as String?,
          requireFullPaymentOnClose: json['requireFullPaymentOnClose'] as bool?,
        );

Map<String, dynamic> _$CustomersApiCustomersGetQueryParametersToJson(
        _CustomersApiCustomersGetQueryParameters instance) =>
    <String, dynamic>{
      if (instance.search case final value?) 'search': value,
      if (instance.requireFullPaymentOnClose case final value?)
        'requireFullPaymentOnClose': value,
    };
