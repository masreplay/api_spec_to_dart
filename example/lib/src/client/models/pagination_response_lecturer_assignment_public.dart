import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'pagination_response_lecturer_assignment_public.freezed.dart';
part 'pagination_response_lecturer_assignment_public.g.dart';

@freezed
class PaginationResponseLecturerAssignmentPublic
    with _$PaginationResponseLecturerAssignmentPublic {
  const PaginationResponseLecturerAssignmentPublic._();

  @JsonSerializable(converters: convertors)
  const factory PaginationResponseLecturerAssignmentPublic({
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
  }) = _PaginationResponseLecturerAssignmentPublic;

  factory PaginationResponseLecturerAssignmentPublic.fromJson(
          Map<String, dynamic> json) =>
      _$PaginationResponseLecturerAssignmentPublicFromJson(json);
}
