// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecturer_announcement_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LecturerAnnouncementPublicImpl _$$LecturerAnnouncementPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$LecturerAnnouncementPublicImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      avatar: json['avatar'] as String?,
      commentsCount: (json['comments_count'] as num?)?.toInt() ?? 0,
      createdAt: DateTime.parse(json['created_at'] as String),
      createdAtFormatted: json['created_at_formatted'] as String,
      files: (json['files'] as List<dynamic>)
          .map((e) => FilePublic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LecturerAnnouncementPublicImplToJson(
        _$LecturerAnnouncementPublicImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'id': instance.id,
      'username': instance.username,
      'avatar': instance.avatar,
      'comments_count': instance.commentsCount,
      'created_at': instance.createdAt.toIso8601String(),
      'created_at_formatted': instance.createdAtFormatted,
      'files': instance.files,
    };
