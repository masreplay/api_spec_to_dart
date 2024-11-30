// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecturer_profile_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LecturerProfilePublicImpl _$$LecturerProfilePublicImplFromJson(
        Map<String, dynamic> json) =>
    _$LecturerProfilePublicImpl(
      id: (json['id'] as num).toInt(),
      fullName: json['full_name'] as String,
      imageUrl: json['image_url'] == null
          ? null
          : Uri.parse(json['image_url'] as String),
    );

Map<String, dynamic> _$$LecturerProfilePublicImplToJson(
        _$LecturerProfilePublicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'image_url': instance.imageUrl?.toString(),
    };
