import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_seamsters_summary.freezed.dart';
part 'student_seamsters_summary.g.dart';

@freezed
class StudentSeamstersSummary with _$StudentSeamstersSummary {
  const StudentSeamstersSummary._();

  @JsonSerializable(converters: convertors)
  const factory StudentSeamstersSummary({
    @JsonKey(name: 'id')

    /// Id
    required int? id,
    @JsonKey(name: 'name')

    /// Name
    required String? name,
    @JsonKey(name: 'is_active')

    /// Is Active
    required bool? isActive,
    @JsonKey(name: 'is_enabled')

    /// Is Enabled
    required bool? isEnabled,
    @JsonKey(name: 'total_number_of_units')

    /// Total Number Of Units
    required num? totalNumberOfUnits,
    @Default(0)
    @JsonKey(name: 'current_number_of_units')

    /// Current Number Of Units
    required int currentNumberOfUnits,
    @Default(0)
    @JsonKey(name: 'current_number_of_subjects')

    /// Current Number Of Subjects
    required int currentNumberOfSubjects,
    @JsonKey(name: 'current_subjects')

    /// Current Subjects
    required List currentSubjects,
    @JsonKey(name: 'previous_subjects')

    /// Previous Subjects
    required List previousSubjects,
  }) = _StudentSeamstersSummary;

  factory StudentSeamstersSummary.fromJson(Map<String, dynamic> json) =>
      _$StudentSeamstersSummaryFromJson(json);
}
