// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_request_object_value_header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostmanRequestObjectValueHeaderHeaderList
_$PostmanRequestObjectValueHeaderHeaderListFromJson(
  Map<String, dynamic> json,
) => PostmanRequestObjectValueHeaderHeaderList(
  (json['value'] as List<dynamic>)
      .map((e) => PostmanHeader.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PostmanRequestObjectValueHeaderHeaderListToJson(
  PostmanRequestObjectValueHeaderHeaderList instance,
) => <String, dynamic>{'value': instance.value.map((e) => e.toJson()).toList()};
