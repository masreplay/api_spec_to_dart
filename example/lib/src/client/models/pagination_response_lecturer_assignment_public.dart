import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_response_lecturer_assignment_public.freezed.dart';
part 'pagination_response_lecturer_assignment_public.g.dart';

@freezed
class PaginationResponseLecturerAssignmentPublic
    with _$PaginationResponseLecturerAssignmentPublic {
  const factory PaginationResponseLecturerAssignmentPublic({
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'data') required List data,
  }) = _PaginationResponseLecturerAssignmentPublic;

  factory PaginationResponseLecturerAssignmentPublic.fromJson(
          Map<String, dynamic> json) =>
      _$PaginationResponseLecturerAssignmentPublicFromJson(json);
}
