import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'semester_filter.freezed.dart';
part 'semester_filter.g.dart';

@freezed
class SemesterFilter with _$SemesterFilter {
  const SemesterFilter._();

  @JsonSerializable(converters: convertors)
  const factory SemesterFilter() = _SemesterFilter;

  factory SemesterFilter.fromJson(Map<String, dynamic> json) =>
      _$SemesterFilterFromJson(json);
}
