import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'base_response_lecturer_assignment_public.freezed.dart';
part 'base_response_lecturer_assignment_public.g.dart';

@freezed
class BaseResponseLecturerAssignmentPublic
    with _$BaseResponseLecturerAssignmentPublic {
  const factory BaseResponseLecturerAssignmentPublic({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required LecturerAssignmentPublic data,
  }) = _BaseResponseLecturerAssignmentPublic;

  factory BaseResponseLecturerAssignmentPublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseLecturerAssignmentPublicFromJson(json);
}
