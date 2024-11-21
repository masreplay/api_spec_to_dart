// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SummaryResponseImpl _$$SummaryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SummaryResponseImpl(
      numberOfCollageSubjects:
          (json['number_of_collage_subjects'] as num?)?.toInt(),
      numberOfUnits: (json['number_of_units'] as num?)?.toInt(),
      numberOfCompletedUnits:
          (json['number_of_completed_units'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SummaryResponseImplToJson(
        _$SummaryResponseImpl instance) =>
    <String, dynamic>{
      'number_of_collage_subjects': instance.numberOfCollageSubjects,
      'number_of_units': instance.numberOfUnits,
      'number_of_completed_units': instance.numberOfCompletedUnits,
    };
