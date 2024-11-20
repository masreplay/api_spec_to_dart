import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_notifications_public.freezed.dart';
part 'student_notifications_public.g.dart';

@freezed
class StudentNotificationsPublic with _$StudentNotificationsPublic {
  const StudentNotificationsPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentNotificationsPublic({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Student Id
    @JsonKey(name: 'student_id') required int? studentId,

    /// Title
    @JsonKey(name: 'title') required Map<String, dynamic> title,

    /// Message
    @JsonKey(name: 'message') required Map<String, dynamic> message,

    /// Notification Type
    @JsonKey(name: 'notification_type') required String notificationType,

    /// Is Opened
    @JsonKey(name: 'is_opened') required bool isOpened,

    /// Deep Link
    @JsonKey(name: 'deep_link') required String? deepLink,

    /// Image Url
    @JsonKey(name: 'image_url') required String? imageUrl,

    /// Extra Data
    @JsonKey(name: 'extra_data') required Map<String, dynamic>? extraData,

    /// Creator Id
    @JsonKey(name: 'creator_id') required int creatorId,

    /// Creation Time
    @JsonKey(name: 'creation_time') required DateTime creationTime,

    /// Last Modifier Id
    @JsonKey(name: 'last_modifier_id') required int? lastModifierId,

    /// Last Modification Time
    @JsonKey(name: 'last_modification_time')
    required DateTime? lastModificationTime,

    /// Is Deleted
    @JsonKey(name: 'is_deleted') required bool isDeleted,

    /// Deleter Id
    @JsonKey(name: 'deleter_id') required int? deleterId,

    /// Deletion Time
    @JsonKey(name: 'deletion_time') required DateTime? deletionTime,
  }) = _StudentNotificationsPublic;

  factory StudentNotificationsPublic.fromJson(Map<String, dynamic> json) =>
      _$StudentNotificationsPublicFromJson(json);
}
