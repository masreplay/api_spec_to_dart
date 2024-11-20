import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'lecturer_course_public.freezed.dart';
part 'lecturer_course_public.g.dart';

@freezed
class LecturerCoursePublic with _$LecturerCoursePublic {
  const LecturerCoursePublic._();

  @JsonSerializable(converters: convertors)
  const factory LecturerCoursePublic({
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'name')

    /// Name
    required String name,
    @JsonKey(name: 'lecturer_name')

    /// Lecturer Name
    required String lecturerName,
    @JsonKey(name: 'collage_name')

    /// Collage Name
    required String collageName,
    @JsonKey(name: 'division_name')

    /// Division Name
    required String divisionName,
    @JsonKey(name: 'group_name')

    /// Group Name
    required String groupName,
    @JsonKey(name: 'student_count')

    /// Student Count
    required int? studentCount,
  }) = _LecturerCoursePublic;

  factory LecturerCoursePublic.fromJson(Map<String, dynamic> json) =>
      _$LecturerCoursePublicFromJson(json);
}
