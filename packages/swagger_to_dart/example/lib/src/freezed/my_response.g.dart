// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyResponseData _$MyResponseDataFromJson(Map<String, dynamic> json) =>
    MyResponseData(
      CreateOrderLine.fromJson(json['create'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$MyResponseDataToJson(MyResponseData instance) =>
    <String, dynamic>{
      'create': instance.create.toJson(),
      'type': instance.$type,
    };

MyResponseSpecial _$MyResponseSpecialFromJson(Map<String, dynamic> json) =>
    MyResponseSpecial(
      UpdateOrderLine.fromJson(json['update'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$MyResponseSpecialToJson(MyResponseSpecial instance) =>
    <String, dynamic>{
      'update': instance.update.toJson(),
      'type': instance.$type,
    };

MyResponseError _$MyResponseErrorFromJson(Map<String, dynamic> json) =>
    MyResponseError(
      DeleteOrderLine.fromJson(json['delete'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$MyResponseErrorToJson(MyResponseError instance) =>
    <String, dynamic>{
      'delete': instance.delete.toJson(),
      'type': instance.$type,
    };
