import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'pagination_response_student_notifications_public.freezed.dart';
part 'pagination_response_student_notifications_public.g.dart';

@freezed
class PaginationResponseStudentNotificationsPublic
    with _$PaginationResponseStudentNotificationsPublic {
  const PaginationResponseStudentNotificationsPublic._();

  @JsonSerializable(converters: convertors)
  const factory PaginationResponseStudentNotificationsPublic({
    /// Page
    @JsonKey(name: 'page') required int page,

    /// Per Page
    @JsonKey(name: 'per_page') required int perPage,

    /// Total
    @JsonKey(name: 'total') required int total,

    /// Data
    @JsonKey(name: 'data') required List<StudentNotificationsPublic> data,
  }) = _PaginationResponseStudentNotificationsPublic;

  factory PaginationResponseStudentNotificationsPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PaginationResponseStudentNotificationsPublicFromJson(json);
}
