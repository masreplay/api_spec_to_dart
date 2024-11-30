// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecializationPublicImpl _$$SpecializationPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecializationPublicImpl(
      majorId: (json['major_id'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$SpecializationPublicImplToJson(
        _$SpecializationPublicImpl instance) =>
    <String, dynamic>{
      'major_id': instance.majorId,
      'id': instance.id,
      'name': instance.name,
    };
