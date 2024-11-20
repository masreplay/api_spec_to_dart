// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_feed_missing_payment_section_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeFeedMissingPaymentSectionPublicImpl
    _$$HomeFeedMissingPaymentSectionPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$HomeFeedMissingPaymentSectionPublicImpl(
          id: (json['id'] as num).toInt(),
          type: json['type'] as String? ?? missing_payment,
          title: json['title'] as String,
          description: json['description'] as String?,
          data: HomeFeedMissingPaymentSectionDataPublic.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$HomeFeedMissingPaymentSectionPublicImplToJson(
        _$HomeFeedMissingPaymentSectionPublicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'data': instance.data,
    };
