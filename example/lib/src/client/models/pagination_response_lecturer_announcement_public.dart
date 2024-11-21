import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'pagination_response_lecturer_announcement_public.freezed.dart';
part 'pagination_response_lecturer_announcement_public.g.dart';

@freezed
class PaginationResponseLecturerAnnouncementPublic
    with _$PaginationResponseLecturerAnnouncementPublic {
  const PaginationResponseLecturerAnnouncementPublic._();

  @JsonSerializable(converters: convertors)
  const factory PaginationResponseLecturerAnnouncementPublic({
    /// Page
    @JsonKey(name: 'page') required int page,

    /// Per Page
    @JsonKey(name: 'per_page') required int perPage,

    /// Total
    @JsonKey(name: 'total') required int total,

    /// Data
    @JsonKey(name: 'data') required List<LecturerAnnouncementPublic> data,
  }) = _PaginationResponseLecturerAnnouncementPublic;

  factory PaginationResponseLecturerAnnouncementPublic.fromJson(
          Map<String, dynamic> json) =>
      _$PaginationResponseLecturerAnnouncementPublicFromJson(json);
}
