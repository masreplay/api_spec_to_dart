// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'majors_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MajorsPublicImpl _$$MajorsPublicImplFromJson(Map<String, dynamic> json) =>
    _$MajorsPublicImpl(
      id: (json['id'] as num).toInt(),
      educationTypeId: (json['education_type_id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$MajorsPublicImplToJson(_$MajorsPublicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'education_type_id': instance.educationTypeId,
      'name': instance.name,
    };
