// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_models_response_multiple.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseModelsResponseMultipleComponentsSchemasUser
_$ResponseModelsResponseMultipleComponentsSchemasUserFromJson(
  Map<String, dynamic> json,
) => ResponseModelsResponseMultipleComponentsSchemasUser(
  User.fromJson(json['value'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic>
_$ResponseModelsResponseMultipleComponentsSchemasUserToJson(
  ResponseModelsResponseMultipleComponentsSchemasUser instance,
) => <String, dynamic>{
  'value': instance.value.toJson(),
  'runtimeType': instance.$type,
};

ResponseModelsResponseMultipleComponentsSchemasLocation
_$ResponseModelsResponseMultipleComponentsSchemasLocationFromJson(
  Map<String, dynamic> json,
) => ResponseModelsResponseMultipleComponentsSchemasLocation(
  Location.fromJson(json['value'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic>
_$ResponseModelsResponseMultipleComponentsSchemasLocationToJson(
  ResponseModelsResponseMultipleComponentsSchemasLocation instance,
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
