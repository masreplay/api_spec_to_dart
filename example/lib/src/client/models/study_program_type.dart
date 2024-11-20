import 'package:freezed_annotation/freezed_annotation.dart';

part 'study_program_type.freezed.dart';
part 'study_program_type.g.dart';

@freezed
class StudyProgramType with _$StudyProgramType {
  const factory StudyProgramType() = _StudyProgramType;

  factory StudyProgramType.fromJson(Map<String, dynamic> json) =>
      _$StudyProgramTypeFromJson(json);
}
