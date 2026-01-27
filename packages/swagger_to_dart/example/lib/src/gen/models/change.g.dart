// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Change _$ChangeFromJson(Map<String, dynamic> json) => _Change(
      changeId: json['change_id'] as String,
      entityName: json['entity_name'] as String,
      entityId: json['entity_id'] as List<dynamic>,
      changeType: ChangeType.fromJson(json['change_type'] as String),
      etag: (json['etag'] as num).toInt(),
      newDataJson: json['new_data_json'] as String,
      sourceId: json['source_id'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$ChangeToJson(_Change instance) => <String, dynamic>{
      'change_id': instance.changeId,
      'entity_name': instance.entityName,
      'entity_id': instance.entityId,
      'change_type': instance.changeType.toJson(),
      'etag': instance.etag,
      'new_data_json': instance.newDataJson,
      'source_id': instance.sourceId,
      'timestamp': instance.timestamp.toIso8601String(),
    };
