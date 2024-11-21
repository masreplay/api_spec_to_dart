import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_selection_status_type.g.dart';

///CourseSelectionStatusType

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum CourseSelectionStatusType {
  select('select'),
  edit('edit'),
  ;

  const CourseSelectionStatusType(this.value);

  factory CourseSelectionStatusType.fromJson(String value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
  final String value;

  String toJson() => _$CourseSelectionStatusTypeEnumMap[this]!;
}
