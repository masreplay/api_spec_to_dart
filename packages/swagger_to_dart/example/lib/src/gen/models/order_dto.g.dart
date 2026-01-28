// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderDto _$OrderDtoFromJson(Map<String, dynamic> json) => _OrderDto(
      id: json['id'] as String,
      kind: DocumentKind.fromJson(json['kind'] as String),
      salePointId: json['sale_point_id'] as String,
      salePointName: json['sale_point_name'] as String,
      customerId: json['customer_id'] as String?,
      customerName: json['customer_name'] as String?,
      userId: json['user_id'] as String,
      userName: json['user_name'] as String,
      status: OrderStatus.fromJson(json['status'] as String),
      paymentStatus:
          OrderPaymentStatus.fromJson(json['payment_status'] as String),
      isPaid: json['is_paid'] as bool,
      number: json['number'] as String,
      total: (json['total'] as num).toDouble(),
      createdAt: DateTime.parse(json['created_at'] as String),
      modifiedAt: DateTime.parse(json['modified_at'] as String),
      lines: (json['lines'] as List<dynamic>)
          .map((e) => OrderLineDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderDtoToJson(_OrderDto instance) => <String, dynamic>{
      'id': instance.id,
      'kind': instance.kind.toJson(),
      'sale_point_id': instance.salePointId,
      'sale_point_name': instance.salePointName,
      if (instance.customerId case final value?) 'customer_id': value,
      if (instance.customerName case final value?) 'customer_name': value,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'status': instance.status.toJson(),
      'payment_status': instance.paymentStatus.toJson(),
      'is_paid': instance.isPaid,
      'number': instance.number,
      'total': instance.total,
      'created_at': instance.createdAt.toIso8601String(),
      'modified_at': instance.modifiedAt.toIso8601String(),
      'lines': instance.lines.map((e) => e.toJson()).toList(),
    };
