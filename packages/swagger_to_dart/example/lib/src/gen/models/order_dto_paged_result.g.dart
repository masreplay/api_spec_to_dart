// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto_paged_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderDtoPagedResult _$OrderDtoPagedResultFromJson(Map<String, dynamic> json) =>
    _OrderDtoPagedResult(
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageToken: json['next_page_token'] as String?,
    );

Map<String, dynamic> _$OrderDtoPagedResultToJson(
        _OrderDtoPagedResult instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      if (instance.nextPageToken case final value?) 'next_page_token': value,
    };
