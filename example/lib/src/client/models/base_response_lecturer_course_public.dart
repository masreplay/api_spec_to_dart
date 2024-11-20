import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_lecturer_course_public.freezed.dart';
part 'base_response_lecturer_course_public.g.dart';

@freezed
class BaseResponseLecturerCoursePublic with _$BaseResponseLecturerCoursePublic {
  const BaseResponseLecturerCoursePublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseLecturerCoursePublic({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required LecturerCoursePublic data,
  }) = _BaseResponseLecturerCoursePublic;

  factory BaseResponseLecturerCoursePublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseLecturerCoursePublicFromJson(json);
}
