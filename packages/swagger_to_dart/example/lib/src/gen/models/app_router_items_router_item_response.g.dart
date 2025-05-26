// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router_items_router_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppRouterItemsRouterItemResponse _$AppRouterItemsRouterItemResponseFromJson(
        Map<String, dynamic> json) =>
    _AppRouterItemsRouterItemResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      price: (json['price'] as num).toDouble(),
      tax: (json['tax'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AppRouterItemsRouterItemResponseToJson(
        _AppRouterItemsRouterItemResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      if (instance.description case final value?) 'description': value,
      'price': instance.price,
      if (instance.tax case final value?) 'tax': value,
    };
