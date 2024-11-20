import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'course_subject_public.freezed.dart';
part 'course_subject_public.g.dart';

@freezed
class CourseSubjectPublic with _$CourseSubjectPublic {
  const CourseSubjectPublic._();

  @JsonSerializable(converters: convertors)
  const factory CourseSubjectPublic({
    @JsonKey(name: 'course_curriculum_id')

    /// Course Curriculum Id
    required int courseCurriculumId,
    @JsonKey(name: 'course_subject_header')

    /// Course Subject Header
    required String courseSubjectHeader,
    @JsonKey(name: 'course_subject_content')

    /// Course Subject Content
    required String courseSubjectContent,
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'attachments')

    /// Attachments
    required List? attachments,
  }) = _CourseSubjectPublic;

  factory CourseSubjectPublic.fromJson(Map<String, dynamic> json) =>
      _$CourseSubjectPublicFromJson(json);
}
