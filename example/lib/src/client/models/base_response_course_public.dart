import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'base_response_course_public.freezed.dart';
part 'base_response_course_public.g.dart';

@freezed
class BaseResponseCoursePublic with _$BaseResponseCoursePublic {
  const factory BaseResponseCoursePublic({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required CoursePublic data,
  }) = _BaseResponseCoursePublic;

  factory BaseResponseCoursePublic.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseCoursePublicFromJson(json);
}
