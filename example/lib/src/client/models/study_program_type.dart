import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'study_program_type.freezed.dart';
part 'study_program_type.g.dart';

@freezed
class StudyProgramType with _$StudyProgramType {
  const StudyProgramType._();

  @JsonSerializable(converters: convertors)
  const factory StudyProgramType() = _StudyProgramType;

  factory StudyProgramType.fromJson(Map<String, dynamic> json) =>
      _$StudyProgramTypeFromJson(json);
}
