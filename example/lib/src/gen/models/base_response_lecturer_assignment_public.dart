import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_lecturer_assignment_public.freezed.dart';
part 'base_response_lecturer_assignment_public.g.dart';

///BaseResponse_LecturerAssignmentPublic_

@freezed
class BaseResponseLecturerAssignmentPublic
    with _$BaseResponseLecturerAssignmentPublic {
  const BaseResponseLecturerAssignmentPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseLecturerAssignmentPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required LecturerAssignmentPublic data,
  }) = _BaseResponseLecturerAssignmentPublic;

  factory BaseResponseLecturerAssignmentPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseLecturerAssignmentPublicFromJson(json);
}
