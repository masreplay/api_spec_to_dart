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
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'data') required List data,
  }) = _PaginationResponseStudentFeesPublic;

  factory PaginationResponseStudentFeesPublic.fromJson(
          Map<String, dynamic> json) =>
      _$PaginationResponseStudentFeesPublicFromJson(json);
}
