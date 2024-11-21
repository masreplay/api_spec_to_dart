// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_ekyc_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitEkycResponseImpl _$$InitEkycResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$InitEkycResponseImpl(
      id: json['id'] as String,
      status: EkycStatusEnum.fromJson((json['status'] as num).toInt()),
    );

Map<String, dynamic> _$$InitEkycResponseImplToJson(
        _$InitEkycResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
    };
