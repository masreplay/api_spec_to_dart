// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_status_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeStatusPublicImpl _$$HomeStatusPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeStatusPublicImpl(
      type: json['type'] as String? ?? 'status',
      title: json['title'] as String,
      description: json['description'] as String?,
      status: json['status'] == null
          ? HomeProcessStatus.noStudyProgram
          : HomeProcessStatus.fromJson(json['status'] as String),
    );

Map<String, dynamic> _$$HomeStatusPublicImplToJson(
        _$HomeStatusPublicImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
    };
