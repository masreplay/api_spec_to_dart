import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_response_student_notifications_public.freezed.dart';
part 'pagination_response_student_notifications_public.g.dart';

@freezed
class PaginationResponseStudentNotificationsPublic
    with _$PaginationResponseStudentNotificationsPublic {
  const factory PaginationResponseStudentNotificationsPublic({
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'data') required List data,
  }) = _PaginationResponseStudentNotificationsPublic;

  factory PaginationResponseStudentNotificationsPublic.fromJson(
          Map<String, dynamic> json) =>
      _$PaginationResponseStudentNotificationsPublicFromJson(json);
}
