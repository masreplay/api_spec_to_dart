// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_notifications_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentNotificationsPublicImpl _$$StudentNotificationsPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentNotificationsPublicImpl(
      id: (json['id'] as num).toInt(),
      studentId: (json['student_id'] as num?)?.toInt(),
      title: json['title'] as Map<String, dynamic>,
      message: json['message'] as Map<String, dynamic>,
      notificationType: json['notification_type'] as String,
      isOpened: json['is_opened'] as bool,
      deepLink: json['deep_link'] as String?,
      imageUrl: json['image_url'] as String?,
      extraData: json['extra_data'] as Map<String, dynamic>?,
      creatorId: (json['creator_id'] as num).toInt(),
      creationTime: DateTime.parse(json['creation_time'] as String),
      lastModifierId: (json['last_modifier_id'] as num?)?.toInt(),
      lastModificationTime: json['last_modification_time'] == null
          ? null
          : DateTime.parse(json['last_modification_time'] as String),
      isDeleted: json['is_deleted'] as bool,
      deleterId: (json['deleter_id'] as num?)?.toInt(),
      deletionTime: json['deletion_time'] == null
          ? null
          : DateTime.parse(json['deletion_time'] as String),
    );

Map<String, dynamic> _$$StudentNotificationsPublicImplToJson(
        _$StudentNotificationsPublicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_id': instance.studentId,
      'title': instance.title,
      'message': instance.message,
      'notification_type': instance.notificationType,
      'is_opened': instance.isOpened,
      'deep_link': instance.deepLink,
      'image_url': instance.imageUrl,
      'extra_data': instance.extraData,
      'creator_id': instance.creatorId,
      'creation_time': instance.creationTime.toIso8601String(),
      'last_modifier_id': instance.lastModifierId,
      'last_modification_time':
          instance.lastModificationTime?.toIso8601String(),
      'is_deleted': instance.isDeleted,
      'deleter_id': instance.deleterId,
      'deletion_time': instance.deletionTime?.toIso8601String(),
    };
