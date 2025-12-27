// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ColorModel _$ColorModelFromJson(Map<String, dynamic> json) => _ColorModel(
      color: const ColorStringJsonConverter().fromJson(json['color'] as String),
    );

Map<String, dynamic> _$ColorModelToJson(_ColorModel instance) =>
    <String, dynamic>{
      'color': const ColorStringJsonConverter().toJson(instance.color),
    };
