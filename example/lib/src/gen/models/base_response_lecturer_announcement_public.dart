import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_lecturer_announcement_public.freezed.dart';
part 'base_response_lecturer_announcement_public.g.dart';

@freezed
class BaseResponseLecturerAnnouncementPublic
    with _$BaseResponseLecturerAnnouncementPublic {
  const BaseResponseLecturerAnnouncementPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseLecturerAnnouncementPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required LecturerAnnouncementPublic data,
  }) = _BaseResponseLecturerAnnouncementPublic;

  factory BaseResponseLecturerAnnouncementPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseLecturerAnnouncementPublicFromJson(json);
}
