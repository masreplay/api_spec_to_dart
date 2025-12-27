// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemRequestBody _$ItemRequestBodyFromJson(Map<String, dynamic> json) =>
    _ItemRequestBody(
      name: json['name'] as String,
      description: json['description'] as String?,
      price: (json['price'] as num).toDouble(),
      tax: (json['tax'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ItemRequestBodyToJson(_ItemRequestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      if (instance.description case final value?) 'description': value,
      'price': instance.price,
      if (instance.tax case final value?) 'tax': value,
    };
