// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_special_literal_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdvancedSpecialLiteralQueryParameters
_$AdvancedSpecialLiteralQueryParametersFromJson(Map<String, dynamic> json) =>
    _AdvancedSpecialLiteralQueryParameters(
      mode: $enumDecodeNullable(_$ModeEnumMap, json['mode']) ?? Mode.system,
    );

Map<String, dynamic> _$AdvancedSpecialLiteralQueryParametersToJson(
  _AdvancedSpecialLiteralQueryParameters instance,
) => <String, dynamic>{'mode': instance.mode.toJson()};

const _$ModeEnumMap = {
  Mode.light: 'light',
  Mode.dark: 'dark',
  Mode.system: 'system',
};
