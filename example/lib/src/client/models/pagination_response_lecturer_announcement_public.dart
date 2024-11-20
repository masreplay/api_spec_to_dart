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
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'data') required List data,
  }) = _PaginationResponseLecturerAnnouncementPublic;

  factory PaginationResponseLecturerAnnouncementPublic.fromJson(
          Map<String, dynamic> json) =>
      _$PaginationResponseLecturerAnnouncementPublicFromJson(json);
}
