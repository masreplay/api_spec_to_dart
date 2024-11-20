// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentMethodPublicImpl _$$PaymentMethodPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentMethodPublicImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      image: json['image'] as String,
      type: PaymentMethodEnum.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentMethodPublicImplToJson(
        _$PaymentMethodPublicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'url': instance.url,
      'image': instance.image,
      'type': instance.type,
    };
