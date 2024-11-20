import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'student_seamsters_summary.freezed.dart';
part 'student_seamsters_summary.g.dart';

@freezed
class StudentSeamstersSummary with _$StudentSeamstersSummary {
  const StudentSeamstersSummary._();

  @JsonSerializable(converters: convertors)
  const factory StudentSeamstersSummary({
    /// Id
    @JsonKey(name: 'id') required int? id,

    /// Name
    @JsonKey(name: 'name') required String? name,

    /// Is Active
    @JsonKey(name: 'is_active') required bool? isActive,

    /// Is Enabled
    @JsonKey(name: 'is_enabled') required bool? isEnabled,

    /// Total Number Of Units
    @JsonKey(name: 'total_number_of_units') required num? totalNumberOfUnits,

    /// Current Number Of Units
    @Default(0)
    @JsonKey(name: 'current_number_of_units')
    required int currentNumberOfUnits,

    /// Current Number Of Subjects
    @Default(0)
    @JsonKey(name: 'current_number_of_subjects')
    required int currentNumberOfSubjects,

    /// Current Subjects
    @JsonKey(name: 'current_subjects') required List<Subject> currentSubjects,

    /// Previous Subjects
    @JsonKey(name: 'previous_subjects') required List<Subject> previousSubjects,
  }) = _StudentSeamstersSummary;

  factory StudentSeamstersSummary.fromJson(Map<String, dynamic> json) =>
      _$StudentSeamstersSummaryFromJson(json);
}
