// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_account_entry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerAccountEntryDto _$CustomerAccountEntryDtoFromJson(
        Map<String, dynamic> json) =>
    _CustomerAccountEntryDto(
      id: json['id'] as String,
      kind: CustomerAccountEntryKind.fromJson(json['kind'] as String),
      notes: json['notes'] as String?,
      order: json['order'] == null
          ? null
          : CustomerAccountEntryOrderDetailsDto.fromJson(
              json['order'] as Map<String, dynamic>),
      amount: (json['amount'] as num).toDouble(),
      balanceAfter: (json['balance_after'] as num).toDouble(),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$CustomerAccountEntryDtoToJson(
        _CustomerAccountEntryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kind': instance.kind.toJson(),
      if (instance.notes case final value?) 'notes': value,
      if (instance.order?.toJson() case final value?) 'order': value,
      'amount': instance.amount,
      'balance_after': instance.balanceAfter,
      'created_at': instance.createdAt.toIso8601String(),
    };
