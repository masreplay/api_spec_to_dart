// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conditional_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConditionalBody _$ConditionalBodyFromJson(Map<String, dynamic> json) =>
    _ConditionalBody(
      itemId: (json['item_id'] as num?)?.toInt(),
      itemName: json['item_name'] as String?,
    );

Map<String, dynamic> _$ConditionalBodyToJson(_ConditionalBody instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'item_name': instance.itemName,
    };
