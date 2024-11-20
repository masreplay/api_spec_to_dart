import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'pagination_response_student_fees_public.freezed.dart';
part 'pagination_response_student_fees_public.g.dart';

@freezed
class PaginationResponseStudentFeesPublic
    with _$PaginationResponseStudentFeesPublic {
  const PaginationResponseStudentFeesPublic._();

  @JsonSerializable(converters: convertors)
  const factory PaginationResponseStudentFeesPublic({
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
  }) = _PaginationResponseStudentFeesPublic;

  factory PaginationResponseStudentFeesPublic.fromJson(
          Map<String, dynamic> json) =>
      _$PaginationResponseStudentFeesPublicFromJson(json);
}
