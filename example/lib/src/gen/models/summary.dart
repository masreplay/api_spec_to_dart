import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'summary.freezed.dart';
part 'summary.g.dart';

///Summary

@freezed
class Summary with _$Summary {
  const Summary._();

  @JsonSerializable(converters: convertors)
  const factory Summary({
    /// Id
    @JsonKey(name: 'id') required int? id,

    /// Title
    @JsonKey(name: 'title') required String? title,

    /// Is Active
    @JsonKey(name: 'is_active') required bool? isActive,

    /// Total Number Of Units
    @JsonKey(name: 'total_number_of_units') required num? totalNumberOfUnits,

    /// Current Number Of Units
    @Default(0)
    @JsonKey(name: 'current_number_of_units')
    int currentNumberOfUnits,

    /// Current Number Of Subjects
    @Default(0)
    @JsonKey(name: 'current_number_of_subjects')
    int currentNumberOfSubjects,
  }) = _Summary;

  factory Summary.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SummaryFromJson(
        json,
      );
}
