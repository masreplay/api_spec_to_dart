import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'pagination_response_student_notifications_public.freezed.dart';
part 'pagination_response_student_notifications_public.g.dart';

@freezed
class PaginationResponseStudentNotificationsPublic
    with _$PaginationResponseStudentNotificationsPublic {
  const PaginationResponseStudentNotificationsPublic._();

  @JsonSerializable(converters: convertors)
  const factory PaginationResponseStudentNotificationsPublic({
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
  }) = _PaginationResponseStudentNotificationsPublic;

  factory PaginationResponseStudentNotificationsPublic.fromJson(
          Map<String, dynamic> json) =>
      _$PaginationResponseStudentNotificationsPublicFromJson(json);
}
