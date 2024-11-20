import 'package:freezed_annotation/freezed_annotation.dart';

part 'semester_filter.freezed.dart';
part 'semester_filter.g.dart';

@freezed
class SemesterFilter with _$SemesterFilter {
  const factory SemesterFilter() = _SemesterFilter;

  factory SemesterFilter.fromJson(Map<String, dynamic> json) =>
      _$SemesterFilterFromJson(json);
}
