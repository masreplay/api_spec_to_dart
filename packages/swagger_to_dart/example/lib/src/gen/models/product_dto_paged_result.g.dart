// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto_paged_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductDtoPagedResult _$ProductDtoPagedResultFromJson(
        Map<String, dynamic> json) =>
    _ProductDtoPagedResult(
      items: (json['items'] as List<dynamic>)
          .map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageToken: json['next_page_token'] as String?,
    );

Map<String, dynamic> _$ProductDtoPagedResultToJson(
        _ProductDtoPagedResult instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      if (instance.nextPageToken case final value?) 'next_page_token': value,
    };
