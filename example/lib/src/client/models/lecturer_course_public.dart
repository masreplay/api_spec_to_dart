import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'lecturer_course_public.freezed.dart';
part 'lecturer_course_public.g.dart';

@freezed
class LecturerCoursePublic with _$LecturerCoursePublic {
  const LecturerCoursePublic._();

  @JsonSerializable(converters: convertors)
  const factory LecturerCoursePublic({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Name
    @JsonKey(name: 'name') required String name,

    /// Lecturer Name
    @JsonKey(name: 'lecturer_name') required String lecturerName,

    /// Collage Name
    @JsonKey(name: 'collage_name') required String collageName,

    /// Division Name
    @JsonKey(name: 'division_name') required String divisionName,

    /// Group Name
    @JsonKey(name: 'group_name') required String groupName,

    /// Student Count
    @JsonKey(name: 'student_count') required int? studentCount,
  }) = _LecturerCoursePublic;

  factory LecturerCoursePublic.fromJson(Map<String, dynamic> json) =>
      _$LecturerCoursePublicFromJson(json);
}
