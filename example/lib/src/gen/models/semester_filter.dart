import 'package:freezed_annotation/freezed_annotation.dart';

part 'semester_filter.g.dart';

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum SemesterFilter {
  all('all'),
  mySubjects('my_subjects'),
  unsubscribedSubjects('unsubscribed_subjects'),
  ;

  const SemesterFilter(this.value);

  factory SemesterFilter.fromJson(String value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
  final String value;

  String toJson() => _$SemesterFilterEnumMap[this]!;
}
