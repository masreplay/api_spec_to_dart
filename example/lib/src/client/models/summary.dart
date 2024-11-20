import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'summary.freezed.dart';
part 'summary.g.dart';

@freezed
class Summary with _$Summary {
  const Summary._();

  @JsonSerializable(converters: convertors)
  const factory Summary({
    @JsonKey(name: 'id') required int? id,
    @JsonKey(name: 'title') required String? title,
    @JsonKey(name: 'is_active') required bool? isActive,
    @JsonKey(name: 'total_number_of_units') required num? totalNumberOfUnits,
    @Default(0)
    @JsonKey(name: 'current_number_of_units')
    required int currentNumberOfUnits,
    @Default(0)
    @JsonKey(name: 'current_number_of_subjects')
    required int currentNumberOfSubjects,
  }) = _Summary;

  factory Summary.fromJson(Map<String, dynamic> json) =>
      _$SummaryFromJson(json);
}
