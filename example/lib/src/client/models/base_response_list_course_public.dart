import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_list_course_public.freezed.dart';
part 'base_response_list_course_public.g.dart';

@freezed
class BaseResponseListCoursePublic with _$BaseResponseListCoursePublic {
  const factory BaseResponseListCoursePublic({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required List data,
  }) = _BaseResponseListCoursePublic;

  factory BaseResponseListCoursePublic.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseListCoursePublicFromJson(json);
}
