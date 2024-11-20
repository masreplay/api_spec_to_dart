import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_pagination_response_lecturer_announcement_public.freezed.dart';
part 'base_response_pagination_response_lecturer_announcement_public.g.dart';

@freezed
class BaseResponsePaginationResponseLecturerAnnouncementPublic
    with _$BaseResponsePaginationResponseLecturerAnnouncementPublic {
  const factory BaseResponsePaginationResponseLecturerAnnouncementPublic({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data')
    required PaginationResponse_LecturerAnnouncementPublic_ data,
  }) = _BaseResponsePaginationResponseLecturerAnnouncementPublic;

  factory BaseResponsePaginationResponseLecturerAnnouncementPublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponsePaginationResponseLecturerAnnouncementPublicFromJson(json);
}
