// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SummaryImpl _$$SummaryImplFromJson(Map<String, dynamic> json) =>
    _$SummaryImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      isActive: json['is_active'] as bool?,
      totalNumberOfUnits: json['total_number_of_units'] as num?,
      currentNumberOfUnits:
          (json['current_number_of_units'] as num?)?.toInt() ?? 0,
      currentNumberOfSubjects:
          (json['current_number_of_subjects'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$SummaryImplToJson(_$SummaryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'is_active': instance.isActive,
      'total_number_of_units': instance.totalNumberOfUnits,
      'current_number_of_units': instance.currentNumberOfUnits,
      'current_number_of_subjects': instance.currentNumberOfSubjects,
    };
