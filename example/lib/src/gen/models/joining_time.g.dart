// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joining_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JoiningTimeImpl _$$JoiningTimeImplFromJson(Map<String, dynamic> json) =>
    _$JoiningTimeImpl(
      joiningTime: json['joining_time'] == null
          ? null
          : DateTime.parse(json['joining_time'] as String),
    );

Map<String, dynamic> _$$JoiningTimeImplToJson(_$JoiningTimeImpl instance) =>
    <String, dynamic>{
      'joining_time': instance.joiningTime?.toIso8601String(),
    };
