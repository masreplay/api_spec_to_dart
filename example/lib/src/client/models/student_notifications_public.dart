import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_notifications_public.freezed.dart';
part 'student_notifications_public.g.dart';

@freezed
class StudentNotificationsPublic with _$StudentNotificationsPublic {
  const StudentNotificationsPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentNotificationsPublic({
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'student_id')

    /// Student Id
    required int? studentId,
    @JsonKey(name: 'title')

    /// Title
    required Map title,
    @JsonKey(name: 'message')

    /// Message
    required Map message,
    @JsonKey(name: 'notification_type')

    /// Notification Type
    required String notificationType,
    @JsonKey(name: 'is_opened')

    /// Is Opened
    required bool isOpened,
    @JsonKey(name: 'deep_link')

    /// Deep Link
    required String? deepLink,
    @JsonKey(name: 'image_url')

    /// Image Url
    required String? imageUrl,
    @JsonKey(name: 'extra_data')

    /// Extra Data
    required Map? extraData,
    @JsonKey(name: 'creator_id')

    /// Creator Id
    required int creatorId,
    @JsonKey(name: 'creation_time')

    /// Creation Time
    required DateTime creationTime,
    @JsonKey(name: 'last_modifier_id')

    /// Last Modifier Id
    required int? lastModifierId,
    @JsonKey(name: 'last_modification_time')

    /// Last Modification Time
    required DateTime? lastModificationTime,
    @JsonKey(name: 'is_deleted')

    /// Is Deleted
    required bool isDeleted,
    @JsonKey(name: 'deleter_id')

    /// Deleter Id
    required int? deleterId,
    @JsonKey(name: 'deletion_time')

    /// Deletion Time
    required DateTime? deletionTime,
  }) = _StudentNotificationsPublic;

  factory StudentNotificationsPublic.fromJson(Map<String, dynamic> json) =>
      _$StudentNotificationsPublicFromJson(json);
}
