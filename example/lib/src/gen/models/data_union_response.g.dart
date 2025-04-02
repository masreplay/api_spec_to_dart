// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_union_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataUnionResponseFallback _$DataUnionResponseFallbackFromJson(
  Map<String, dynamic> json,
) => DataUnionResponseFallback($type: json['type'] as String?);

Map<String, dynamic> _$DataUnionResponseFallbackToJson(
  DataUnionResponseFallback instance,
) => <String, dynamic>{'type': instance.$type};

DataUnionResponseBarChart _$DataUnionResponseBarChartFromJson(
  Map<String, dynamic> json,
) => DataUnionResponseBarChart(
  FeedItemBarChartPublic.fromJson(json['value'] as Map<String, dynamic>),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$DataUnionResponseBarChartToJson(
  DataUnionResponseBarChart instance,
) => <String, dynamic>{
  'value': instance.value.toJson(),
  'type': instance.$type,
};

DataUnionResponseLineChart _$DataUnionResponseLineChartFromJson(
  Map<String, dynamic> json,
) => DataUnionResponseLineChart(
  FeedItemLineChartPublic.fromJson(json['value'] as Map<String, dynamic>),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$DataUnionResponseLineChartToJson(
  DataUnionResponseLineChart instance,
) => <String, dynamic>{
  'value': instance.value.toJson(),
  'type': instance.$type,
};

DataUnionResponsePieChart _$DataUnionResponsePieChartFromJson(
  Map<String, dynamic> json,
) => DataUnionResponsePieChart(
  FeedItemPieChartPublic.fromJson(json['value'] as Map<String, dynamic>),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$DataUnionResponsePieChartToJson(
  DataUnionResponsePieChart instance,
) => <String, dynamic>{
  'value': instance.value.toJson(),
  'type': instance.$type,
};
