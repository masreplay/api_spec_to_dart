// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_api_orders_get_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrdersApiOrdersGetQueryParameters _$OrdersApiOrdersGetQueryParametersFromJson(
        Map<String, dynamic> json) =>
    _OrdersApiOrdersGetQueryParameters(
      pageToken: json['pageToken'] as String?,
      pageSize: (json['pageSize'] as num?)?.toInt() ?? 100,
      salePointId: json['salePointId'] as String?,
      status: json['status'] == null
          ? null
          : OrderStatus.fromJson(json['status'] as String),
      customerId: json['customerId'] as String?,
      dateRange: json['dateRange'] == null
          ? null
          : DateRange.fromJson(json['dateRange'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrdersApiOrdersGetQueryParametersToJson(
        _OrdersApiOrdersGetQueryParameters instance) =>
    <String, dynamic>{
      if (instance.pageToken case final value?) 'pageToken': value,
      'pageSize': instance.pageSize,
      if (instance.salePointId case final value?) 'salePointId': value,
      if (instance.status?.toJson() case final value?) 'status': value,
      if (instance.customerId case final value?) 'customerId': value,
      if (instance.dateRange?.toJson() case final value?) 'dateRange': value,
    };
