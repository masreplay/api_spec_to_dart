// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanResponse _$PostmanResponseFromJson(Map<String, dynamic> json) =>
    _PostmanResponse(
      id: json['id'] as String?,
      originalRequest: json['originalRequest'] == null
          ? null
          : PostmanRequest.fromJson(json['originalRequest']),
      responseTime: json['responseTime'],
      timings: json['timings'] as Map<String, dynamic>?,
      header: json['header'] == null
          ? null
          : PostmanHeaders.fromJson(json['header']),
      cookie: (json['cookie'] as List<dynamic>?)
          ?.map((e) => PostmanCookie.fromJson(e as Map<String, dynamic>))
          .toList(),
      body: json['body'] as String?,
      status: json['status'] as String?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PostmanResponseToJson(_PostmanResponse instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'originalRequest': ?instance.originalRequest?.toJson(),
      'responseTime': ?instance.responseTime,
      'timings': ?instance.timings,
      'header': ?instance.header?.toJson(),
      'cookie': ?instance.cookie?.map((e) => e.toJson()).toList(),
      'body': ?instance.body,
      'status': ?instance.status,
      'code': ?instance.code,
    };
