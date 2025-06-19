// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_special_literal_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdvancedSpecialLiteralQueryParameters
    _$AdvancedSpecialLiteralQueryParametersFromJson(
            Map<String, dynamic> json) =>
        _AdvancedSpecialLiteralQueryParameters(
          mode: json['mode'] == null
              ? Mode.system
              : Mode.fromJson(json['mode'] as String),
        );

Map<String, dynamic> _$AdvancedSpecialLiteralQueryParametersToJson(
        _AdvancedSpecialLiteralQueryParameters instance) =>
    <String, dynamic>{
      'mode': instance.mode.toJson(),
    };
