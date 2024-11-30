// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_ui_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUIFormImpl _$$BaseResponseUIFormImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseResponseUIFormImpl(
      message: json['message'] as String?,
      data: UIForm.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BaseResponseUIFormImplToJson(
        _$BaseResponseUIFormImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
