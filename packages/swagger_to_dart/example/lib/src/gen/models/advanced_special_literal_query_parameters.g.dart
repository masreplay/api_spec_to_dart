// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_special_literal_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdvancedSpecialLiteralQueryParameters
_$AdvancedSpecialLiteralQueryParametersFromJson(
  Map<String, dynamic> json,
) => _AdvancedSpecialLiteralQueryParameters(
  mode: $enumDecodeNullable(_$ModeEnumEnumMap, json['mode']) ?? ModeEnum.system,
);

Map<String, dynamic> _$AdvancedSpecialLiteralQueryParametersToJson(
  _AdvancedSpecialLiteralQueryParameters instance,
) => <String, dynamic>{'mode': instance.mode.toJson()};

const _$ModeEnumEnumMap = {
  ModeEnum.light: 'light',
  ModeEnum.dark: 'dark',
  ModeEnum.system: 'system',
};
