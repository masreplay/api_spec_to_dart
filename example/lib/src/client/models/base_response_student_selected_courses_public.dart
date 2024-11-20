import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_student_selected_courses_public.freezed.dart';
part 'base_response_student_selected_courses_public.g.dart';

@freezed
class BaseResponseStudentSelectedCoursesPublic
    with _$BaseResponseStudentSelectedCoursesPublic {
  const BaseResponseStudentSelectedCoursesPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseStudentSelectedCoursesPublic({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required StudentSelectedCoursesPublic data,
  }) = _BaseResponseStudentSelectedCoursesPublic;

  factory BaseResponseStudentSelectedCoursesPublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseStudentSelectedCoursesPublicFromJson(json);
}
