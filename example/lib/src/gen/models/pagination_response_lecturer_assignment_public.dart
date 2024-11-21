import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'pagination_response_lecturer_assignment_public.freezed.dart';
part 'pagination_response_lecturer_assignment_public.g.dart';

@freezed
class PaginationResponseLecturerAssignmentPublic
    with _$PaginationResponseLecturerAssignmentPublic {
  const PaginationResponseLecturerAssignmentPublic._();

  @JsonSerializable(converters: convertors)
  const factory PaginationResponseLecturerAssignmentPublic({
    /// Page
    @JsonKey(name: 'page') required int page,

    /// Per Page
    @JsonKey(name: 'per_page') required int perPage,

    /// Total
    @JsonKey(name: 'total') required int total,

    /// Data
    @JsonKey(name: 'data') required List<LecturerAssignmentPublic> data,
  }) = _PaginationResponseLecturerAssignmentPublic;

  factory PaginationResponseLecturerAssignmentPublic.fromJson(
          Map<String, dynamic> json) =>
      _$PaginationResponseLecturerAssignmentPublicFromJson(json);
}
