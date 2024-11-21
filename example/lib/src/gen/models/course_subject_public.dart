import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'course_subject_public.freezed.dart';
part 'course_subject_public.g.dart';

///CourseSubjectPublic

@freezed
class CourseSubjectPublic with _$CourseSubjectPublic {
  const CourseSubjectPublic._();

  @JsonSerializable(converters: convertors)
  const factory CourseSubjectPublic({
    /// Course Curriculum Id
    @JsonKey(name: 'course_curriculum_id') required int courseCurriculumId,

    /// Course Subject Header
    @JsonKey(name: 'course_subject_header') required String courseSubjectHeader,

    /// Course Subject Content
    @JsonKey(name: 'course_subject_content')
    required String courseSubjectContent,

    /// Id
    @JsonKey(name: 'id') required int id,

    /// Attachments
    @JsonKey(name: 'attachments')
    required List<AttachmentResponse>? attachments,
  }) = _CourseSubjectPublic;

  factory CourseSubjectPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CourseSubjectPublicFromJson(json);
}
