import 'package:freezed_annotation/freezed_annotation.dart';

part 'study_program_type.g.dart';

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum StudyProgramType {
  daytime('daytime'),
  evening('evening'),
  ;

  const StudyProgramType(this.value);

  factory StudyProgramType.fromJson(String value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
  final String value;

  String toJson() => _$StudyProgramTypeEnumMap[this]!;
}
