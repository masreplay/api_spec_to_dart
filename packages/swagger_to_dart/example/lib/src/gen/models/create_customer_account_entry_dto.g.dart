// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_customer_account_entry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateCustomerAccountEntryDto _$CreateCustomerAccountEntryDtoFromJson(
        Map<String, dynamic> json) =>
    _CreateCustomerAccountEntryDto(
      kind: CustomerAccountEntryKind.fromJson(json['kind'] as String),
      amount: (json['amount'] as num).toDouble(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$CreateCustomerAccountEntryDtoToJson(
        _CreateCustomerAccountEntryDto instance) =>
    <String, dynamic>{
      'kind': instance.kind.toJson(),
      'amount': instance.amount,
      if (instance.notes case final value?) 'notes': value,
    };
