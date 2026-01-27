// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_invoices_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GenerateInvoicesRequest _$GenerateInvoicesRequestFromJson(
        Map<String, dynamic> json) =>
    _GenerateInvoicesRequest(
      orderIds:
          (json['order_ids'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$GenerateInvoicesRequestToJson(
        _GenerateInvoicesRequest instance) =>
    <String, dynamic>{
      'order_ids': instance.orderIds,
    };
