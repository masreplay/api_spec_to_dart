// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProblemDetails _$ProblemDetailsFromJson(Map<String, dynamic> json) =>
    _ProblemDetails(
      type: json['type'] as String?,
      title: json['title'] as String?,
      status: (json['status'] as num?)?.toInt(),
      detail: json['detail'] as String?,
      instance: json['instance'] as String?,
    );

Map<String, dynamic> _$ProblemDetailsToJson(_ProblemDetails instance) =>
    <String, dynamic>{
      if (instance.type case final value?) 'type': value,
      if (instance.title case final value?) 'title': value,
      if (instance.status case final value?) 'status': value,
      if (instance.detail case final value?) 'detail': value,
      if (instance.instance case final value?) 'instance': value,
    };
