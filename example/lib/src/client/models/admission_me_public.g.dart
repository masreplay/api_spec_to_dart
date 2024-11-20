// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admission_me_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdmissionMePublicImpl _$$AdmissionMePublicImplFromJson(
        Map<String, dynamic> json) =>
    _$AdmissionMePublicImpl(
      isCurrent: json['is_current'] as bool?,
      collage: json['collage'] as String?,
      department: json['department'] as String?,
      type: (json['type'] as num?)?.toInt(),
      year: json['year'] as String?,
      studyStatus: json['study_status'] as String?,
      division: json['division'] as String?,
      group: json['group'] as String?,
      stage: (json['stage'] as num?)?.toInt(),
      isDirect: (json['is_direct'] as num?)?.toInt(),
      scholarship: json['scholarship'] as String?,
      channel: json['channel'] as String?,
    );

Map<String, dynamic> _$$AdmissionMePublicImplToJson(
        _$AdmissionMePublicImpl instance) =>
    <String, dynamic>{
      'is_current': instance.isCurrent,
      'collage': instance.collage,
      'department': instance.department,
      'type': instance.type,
      'year': instance.year,
      'study_status': instance.studyStatus,
      'division': instance.division,
      'group': instance.group,
      'stage': instance.stage,
      'is_direct': instance.isDirect,
      'scholarship': instance.scholarship,
      'channel': instance.channel,
    };
