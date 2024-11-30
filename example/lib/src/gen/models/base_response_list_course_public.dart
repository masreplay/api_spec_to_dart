import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_list_course_public.freezed.dart';
part 'base_response_list_course_public.g.dart';

///BaseResponse_list_CoursePublic__

@freezed
class BaseResponseListCoursePublic with _$BaseResponseListCoursePublic {
  const BaseResponseListCoursePublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListCoursePublic({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List<CoursePublic> data,
  }) = _BaseResponseListCoursePublic;

  factory BaseResponseListCoursePublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseListCoursePublicFromJson(
        json,
      );
}
