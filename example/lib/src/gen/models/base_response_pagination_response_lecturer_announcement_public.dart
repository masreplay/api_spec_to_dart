import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_pagination_response_lecturer_announcement_public.freezed.dart';
part 'base_response_pagination_response_lecturer_announcement_public.g.dart';

@freezed
class BaseResponsePaginationResponseLecturerAnnouncementPublic
    with _$BaseResponsePaginationResponseLecturerAnnouncementPublic {
  const BaseResponsePaginationResponseLecturerAnnouncementPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponsePaginationResponseLecturerAnnouncementPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data')
    required PaginationResponseLecturerAnnouncementPublic data,
  }) = _BaseResponsePaginationResponseLecturerAnnouncementPublic;

  factory BaseResponsePaginationResponseLecturerAnnouncementPublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponsePaginationResponseLecturerAnnouncementPublicFromJson(json);
}
