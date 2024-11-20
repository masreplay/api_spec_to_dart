import 'package:freezed_annotation/freezed_annotation.dart';

part 'lecturer_course_public.freezed.dart';
part 'lecturer_course_public.g.dart';

@freezed
class LecturerCoursePublic with _$LecturerCoursePublic {
  const factory LecturerCoursePublic({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'lecturer_name') required String lecturerName,
    @JsonKey(name: 'collage_name') required String collageName,
    @JsonKey(name: 'division_name') required String divisionName,
    @JsonKey(name: 'group_name') required String groupName,
    @JsonKey(name: 'student_count') required int? studentCount,
  }) = _LecturerCoursePublic;

  factory LecturerCoursePublic.fromJson(Map<String, dynamic> json) =>
      _$LecturerCoursePublicFromJson(json);
}
