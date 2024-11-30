import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_pagination_response_student_notifications_public.freezed.dart';
part 'base_response_pagination_response_student_notifications_public.g.dart';

///BaseResponse_PaginationResponse_StudentNotificationsPublic__

@freezed
class BaseResponsePaginationResponseStudentNotificationsPublic
    with _$BaseResponsePaginationResponseStudentNotificationsPublic {
  const BaseResponsePaginationResponseStudentNotificationsPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponsePaginationResponseStudentNotificationsPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data')
    required PaginationResponseStudentNotificationsPublic data,
  }) = _BaseResponsePaginationResponseStudentNotificationsPublic;

  factory BaseResponsePaginationResponseStudentNotificationsPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponsePaginationResponseStudentNotificationsPublicFromJson(
        json,
      );
}
