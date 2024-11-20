import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'pagination_response_lecturer_announcement_public.freezed.dart';
part 'pagination_response_lecturer_announcement_public.g.dart';

@freezed
class PaginationResponseLecturerAnnouncementPublic
    with _$PaginationResponseLecturerAnnouncementPublic {
  const PaginationResponseLecturerAnnouncementPublic._();

  @JsonSerializable(converters: convertors)
  const factory PaginationResponseLecturerAnnouncementPublic({
    @JsonKey(name: 'page')

    /// Page
    required int page,
    @JsonKey(name: 'per_page')

    /// Per Page
    required int perPage,
    @JsonKey(name: 'total')

    /// Total
    required int total,
    @JsonKey(name: 'data')

    /// Data
    required List data,
  }) = _PaginationResponseLecturerAnnouncementPublic;

  factory PaginationResponseLecturerAnnouncementPublic.fromJson(
          Map<String, dynamic> json) =>
      _$PaginationResponseLecturerAnnouncementPublicFromJson(json);
}
