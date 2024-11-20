import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_pagination_response_student_notifications_public.freezed.dart';
part 'base_response_pagination_response_student_notifications_public.g.dart';

@freezed
class BaseResponsePaginationResponseStudentNotificationsPublic
    with _$BaseResponsePaginationResponseStudentNotificationsPublic {
  const BaseResponsePaginationResponseStudentNotificationsPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponsePaginationResponseStudentNotificationsPublic({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data')
    required PaginationResponseStudentNotificationsPublic data,
  }) = _BaseResponsePaginationResponseStudentNotificationsPublic;

  factory BaseResponsePaginationResponseStudentNotificationsPublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponsePaginationResponseStudentNotificationsPublicFromJson(json);
}
