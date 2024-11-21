import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_process_status.g.dart';

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum HomeProcessStatus {
  noStudyProgram('no_study_program'),
  ;

  const HomeProcessStatus(this.value);

  final String value;

  String toJson() => _$HomeProcessStatusEnumMap[this]!;
  factory HomeProcessStatus.fromJson(String value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
}
