// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_models_response_multiple.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseModelsResponseMultipleUser _$ResponseModelsResponseMultipleUserFromJson(
  Map<String, dynamic> json,
) => ResponseModelsResponseMultipleUser(
  User.fromJson(json['value'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ResponseModelsResponseMultipleUserToJson(
  ResponseModelsResponseMultipleUser instance,
) => <String, dynamic>{
  'value': instance.value.toJson(),
  'runtimeType': instance.$type,
};

ResponseModelsResponseMultipleLocation
_$ResponseModelsResponseMultipleLocationFromJson(Map<String, dynamic> json) =>
    ResponseModelsResponseMultipleLocation(
      Location.fromJson(json['value'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ResponseModelsResponseMultipleLocationToJson(
  ResponseModelsResponseMultipleLocation instance,
) => <String, dynamic>{
  'value': instance.value.toJson(),
  'runtimeType': instance.$type,
};

ResponseModelsResponseMultipleFallback
_$ResponseModelsResponseMultipleFallbackFromJson(Map<String, dynamic> json) =>
    ResponseModelsResponseMultipleFallback(
      json['value'] as Map<String, dynamic>?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ResponseModelsResponseMultipleFallbackToJson(
  ResponseModelsResponseMultipleFallback instance,
) => <String, dynamic>{
  if (instance.value case final value?) 'value': value,
  'runtimeType': instance.$type,
};
