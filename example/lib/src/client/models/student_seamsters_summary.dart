import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_seamsters_summary.freezed.dart';
part 'student_seamsters_summary.g.dart';

@freezed
class StudentSeamstersSummary with _$StudentSeamstersSummary {
  const factory StudentSeamstersSummary({
    @JsonKey(name: 'id') required int? id,
    @JsonKey(name: 'name') required String? name,
    @JsonKey(name: 'is_active') required bool? isActive,
    @JsonKey(name: 'is_enabled') required bool? isEnabled,
    @JsonKey(name: 'total_number_of_units') required num? totalNumberOfUnits,
    @Default(0)
    @JsonKey(name: 'current_number_of_units')
    required int currentNumberOfUnits,
    @Default(0)
    @JsonKey(name: 'current_number_of_subjects')
    required int currentNumberOfSubjects,
    @JsonKey(name: 'current_subjects') required List currentSubjects,
    @JsonKey(name: 'previous_subjects') required List previousSubjects,
  }) = _StudentSeamstersSummary;

  factory StudentSeamstersSummary.fromJson(Map<String, dynamic> json) =>
      _$StudentSeamstersSummaryFromJson(json);
}
