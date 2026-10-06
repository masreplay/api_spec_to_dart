// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_url_object_value_path.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostmanUrlObjectValuePathList _$PostmanUrlObjectValuePathListFromJson(
  Map<String, dynamic> json,
) => PostmanUrlObjectValuePathList(
  (json['value'] as List<dynamic>)
      .map(PostmanUrlObjectValuePathListValueItem.fromJson)
      .toList(),
);

Map<String, dynamic> _$PostmanUrlObjectValuePathListToJson(
  PostmanUrlObjectValuePathList instance,
) => <String, dynamic>{'value': instance.value.map((e) => e.toJson()).toList()};
