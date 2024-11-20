// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_seamsters_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentSeamstersSummaryImpl _$$StudentSeamstersSummaryImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentSeamstersSummaryImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      isActive: json['is_active'] as bool?,
      isEnabled: json['is_enabled'] as bool?,
      totalNumberOfUnits: json['total_number_of_units'] as num?,
      currentNumberOfUnits:
          (json['current_number_of_units'] as num?)?.toInt() ?? 0,
      currentNumberOfSubjects:
          (json['current_number_of_subjects'] as num?)?.toInt() ?? 0,
      currentSubjects: json['current_subjects'] as List<dynamic>,
      previousSubjects: json['previous_subjects'] as List<dynamic>,
    );

Map<String, dynamic> _$$StudentSeamstersSummaryImplToJson(
        _$StudentSeamstersSummaryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'is_active': instance.isActive,
      'is_enabled': instance.isEnabled,
      'total_number_of_units': instance.totalNumberOfUnits,
      'current_number_of_units': instance.currentNumberOfUnits,
      'current_number_of_subjects': instance.currentNumberOfSubjects,
      'current_subjects': instance.currentSubjects,
      'previous_subjects': instance.previousSubjects,
    };
