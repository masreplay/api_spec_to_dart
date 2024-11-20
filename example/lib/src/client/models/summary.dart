import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'summary.freezed.dart';
part 'summary.g.dart';

@freezed
class Summary with _$Summary {
  const Summary._();

  @JsonSerializable(converters: convertors)
  const factory Summary({
    @JsonKey(name: 'id')

    /// Id
    required int? id,
    @JsonKey(name: 'title')

    /// Title
    required String? title,
    @JsonKey(name: 'is_active')

    /// Is Active
    required bool? isActive,
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
  }) = _Summary;

  factory Summary.fromJson(Map<String, dynamic> json) =>
      _$SummaryFromJson(json);
}
