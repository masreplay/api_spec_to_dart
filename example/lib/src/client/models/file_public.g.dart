// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilePublicImpl _$$FilePublicImplFromJson(Map<String, dynamic> json) =>
    _$FilePublicImpl(
      id: (json['id'] as num).toInt(),
      url: Uri.parse(json['url'] as String),
      name: json['name'] as String,
      contentType: json['content_type'] as String,
      size: (json['size'] as num).toInt(),
    );

Map<String, dynamic> _$$FilePublicImplToJson(_$FilePublicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url.toString(),
      'name': instance.name,
      'content_type': instance.contentType,
      'size': instance.size,
    };
