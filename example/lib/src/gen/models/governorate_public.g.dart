// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'governorate_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GovernoratePublicImpl _$$GovernoratePublicImplFromJson(
        Map<String, dynamic> json) =>
    _$GovernoratePublicImpl(
      countryId: (json['country_id'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$GovernoratePublicImplToJson(
        _$GovernoratePublicImpl instance) =>
    <String, dynamic>{
      'country_id': instance.countryId,
      'id': instance.id,
      'name': instance.name,
    };
