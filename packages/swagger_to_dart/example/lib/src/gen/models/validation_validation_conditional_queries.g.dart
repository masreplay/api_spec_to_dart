// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_validation_conditional_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ValidationValidationConditionalQueries
    _$ValidationValidationConditionalQueriesFromJson(
            Map<String, dynamic> json) =>
        _ValidationValidationConditionalQueries(
          userId: (json['user_id'] as num?)?.toInt(),
          username: json['username'] as String?,
        );

Map<String, dynamic> _$ValidationValidationConditionalQueriesToJson(
  _ValidationValidationConditionalQueries instance,
) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'username': instance.username,
    };
