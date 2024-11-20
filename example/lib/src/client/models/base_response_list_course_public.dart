import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_list_course_public.freezed.dart';
part 'base_response_list_course_public.g.dart';

@freezed
class BaseResponseListCoursePublic with _$BaseResponseListCoursePublic {
  const BaseResponseListCoursePublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListCoursePublic({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data')

    /// Data
    required List data,
  }) = _BaseResponseListCoursePublic;

  factory BaseResponseListCoursePublic.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseListCoursePublicFromJson(json);
}
