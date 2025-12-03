// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_validation_conditional_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ValidationValidationConditionalQueryParameters
    _$ValidationValidationConditionalQueryParametersFromJson(
            Map<String, dynamic> json) =>
        _ValidationValidationConditionalQueryParameters(
          userId: (json['user_id'] as num?)?.toInt(),
          username: json['username'] as String?,
        );

Map<String, dynamic> _$ValidationValidationConditionalQueryParametersToJson(
        _ValidationValidationConditionalQueryParameters instance) =>
    <String, dynamic>{
      if (instance.userId case final value?) 'user_id': value,
      if (instance.username case final value?) 'username': value,
    };
