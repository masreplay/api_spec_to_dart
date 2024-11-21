import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'lecturer_announcement_update_public.freezed.dart';
part 'lecturer_announcement_update_public.g.dart';

///LecturerAnnouncementUpdatePublic

@freezed
class LecturerAnnouncementUpdatePublic with _$LecturerAnnouncementUpdatePublic {
  const LecturerAnnouncementUpdatePublic._();

  @JsonSerializable(converters: convertors)
  const factory LecturerAnnouncementUpdatePublic({
    /// Title
    @JsonKey(name: 'title') required String title,

    /// Description
    @JsonKey(name: 'description') required String? description,
  }) = _LecturerAnnouncementUpdatePublic;

  factory LecturerAnnouncementUpdatePublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LecturerAnnouncementUpdatePublicFromJson(json);
}
