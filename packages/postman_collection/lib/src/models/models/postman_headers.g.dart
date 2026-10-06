// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_headers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostmanHeadersList _$PostmanHeadersListFromJson(Map<String, dynamic> json) =>
    PostmanHeadersList(
      (json['value'] as List<dynamic>)
          .map(PostmanHeadersListValueItem.fromJson)
          .toList(),
    );

Map<String, dynamic> _$PostmanHeadersListToJson(PostmanHeadersList instance) =>
    <String, dynamic>{'value': instance.value.map((e) => e.toJson()).toList()};
