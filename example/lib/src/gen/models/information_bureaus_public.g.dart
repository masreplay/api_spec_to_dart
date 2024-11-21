// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'information_bureaus_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InformationBureausPublicImpl _$$InformationBureausPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$InformationBureausPublicImpl(
      id: (json['id'] as num).toInt(),
      governorateId: (json['governorate_id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$InformationBureausPublicImplToJson(
        _$InformationBureausPublicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'governorate_id': instance.governorateId,
      'name': instance.name,
    };
