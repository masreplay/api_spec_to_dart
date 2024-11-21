import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_union_student_notifications_public_none_type.freezed.dart';
part 'base_response_union_student_notifications_public_none_type.g.dart';

@freezed
class BaseResponseUnionStudentNotificationsPublicNoneType
    with _$BaseResponseUnionStudentNotificationsPublicNoneType {
  const BaseResponseUnionStudentNotificationsPublicNoneType._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionStudentNotificationsPublicNoneType({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required StudentNotificationsPublic? data,
  }) = _BaseResponseUnionStudentNotificationsPublicNoneType;

  factory BaseResponseUnionStudentNotificationsPublicNoneType.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseUnionStudentNotificationsPublicNoneTypeFromJson(json);
}
