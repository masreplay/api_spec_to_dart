// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'h_t_t_p_validation_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HTTPValidationError _$HTTPValidationErrorFromJson(Map<String, dynamic> json) =>
    _HTTPValidationError(
      detail:
          (json['detail'] as List<dynamic>)
              .map((e) => ValidationError.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$HTTPValidationErrorToJson(
  _HTTPValidationError instance,
) => <String, dynamic>{'detail': instance.detail};
