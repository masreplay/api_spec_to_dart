// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CoordinateModel _$CoordinateModelFromJson(Map<String, dynamic> json) =>
    _CoordinateModel(
      coordinate: json['coordinate'],
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CoordinateModelToJson(_CoordinateModel instance) =>
    <String, dynamic>{
      'coordinate': instance.coordinate,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
