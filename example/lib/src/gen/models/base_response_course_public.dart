import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_course_public.freezed.dart';
part 'base_response_course_public.g.dart';

@freezed
class BaseResponseCoursePublic with _$BaseResponseCoursePublic {
  const BaseResponseCoursePublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseCoursePublic({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required CoursePublic data,
  }) = _BaseResponseCoursePublic;

  factory BaseResponseCoursePublic.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseCoursePublicFromJson(json);
}
