// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_list_nationalisms_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseListNationalismsPublicImpl
    _$$BaseResponseListNationalismsPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseListNationalismsPublicImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>)
              .map(
                  (e) => NationalismsPublic.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BaseResponseListNationalismsPublicImplToJson(
        _$BaseResponseListNationalismsPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
