// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_items_router_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppItemsRouterItemResponse _$AppItemsRouterItemResponseFromJson(
  Map<String, dynamic> json,
) => _AppItemsRouterItemResponse(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  description: json['description'] as String?,
  price: (json['price'] as num).toDouble(),
  tax: (json['tax'] as num?)?.toDouble(),
);

Map<String, dynamic> _$AppItemsRouterItemResponseToJson(
  _AppItemsRouterItemResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'price': instance.price,
  'tax': instance.tax,
};
