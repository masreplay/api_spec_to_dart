import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_list_student_selected_courses_public.freezed.dart';
part 'base_response_list_student_selected_courses_public.g.dart';

@freezed
class BaseResponseListStudentSelectedCoursesPublic
    with _$BaseResponseListStudentSelectedCoursesPublic {
  const BaseResponseListStudentSelectedCoursesPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListStudentSelectedCoursesPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List<StudentSelectedCoursesPublic> data,
  }) = _BaseResponseListStudentSelectedCoursesPublic;

  factory BaseResponseListStudentSelectedCoursesPublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseListStudentSelectedCoursesPublicFromJson(json);
}
