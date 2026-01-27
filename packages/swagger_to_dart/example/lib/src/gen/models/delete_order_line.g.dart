// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_order_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeleteOrderLine _$DeleteOrderLineFromJson(Map<String, dynamic> json) =>
    _DeleteOrderLine(
      id: json['id'] as String,
      type: json['type'] as String? ?? 'delete',
    );

Map<String, dynamic> _$DeleteOrderLineToJson(_DeleteOrderLine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };
