import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_union_student_notifications_public_.freezed.dart';
part 'base_response_union_student_notifications_public_.g.dart';

///BaseResponse_Union_StudentNotificationsPublic__NoneType__

@freezed
class BaseResponseUnionStudentNotificationsPublic
    with _$BaseResponseUnionStudentNotificationsPublic {
  const BaseResponseUnionStudentNotificationsPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionStudentNotificationsPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required StudentNotificationsPublic? data,
  }) = _BaseResponseUnionStudentNotificationsPublic;

  factory BaseResponseUnionStudentNotificationsPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseUnionStudentNotificationsPublicFromJson(
        json,
      );
}
