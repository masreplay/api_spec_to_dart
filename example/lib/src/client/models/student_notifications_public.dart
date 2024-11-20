import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_notifications_public.freezed.dart';
part 'student_notifications_public.g.dart';

@freezed
class StudentNotificationsPublic with _$StudentNotificationsPublic {
  const factory StudentNotificationsPublic({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'student_id') required int? studentId,
    @JsonKey(name: 'title') required Map title,
    @JsonKey(name: 'message') required Map message,
    @JsonKey(name: 'notification_type') required String notificationType,
    @JsonKey(name: 'is_opened') required bool isOpened,
    @JsonKey(name: 'deep_link') required String? deepLink,
    @JsonKey(name: 'image_url') required String? imageUrl,
    @JsonKey(name: 'extra_data') required Map? extraData,
    @JsonKey(name: 'creator_id') required int creatorId,
    @JsonKey(name: 'creation_time') required DateTime creationTime,
    @JsonKey(name: 'last_modifier_id') required int? lastModifierId,
    @JsonKey(name: 'last_modification_time')
    required DateTime? lastModificationTime,
    @JsonKey(name: 'is_deleted') required bool isDeleted,
    @JsonKey(name: 'deleter_id') required int? deleterId,
    @JsonKey(name: 'deletion_time') required DateTime? deletionTime,
  }) = _StudentNotificationsPublic;

  factory StudentNotificationsPublic.fromJson(Map<String, dynamic> json) =>
      _$StudentNotificationsPublicFromJson(json);
}
