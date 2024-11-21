import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'summary_response.freezed.dart';
part 'summary_response.g.dart';

@freezed
class SummaryResponse with _$SummaryResponse {
  const SummaryResponse._();

  @JsonSerializable(converters: convertors)
  const factory SummaryResponse({
    /// Number Of Collage Subjects
    @JsonKey(name: 'number_of_collage_subjects')
    required int? numberOfCollageSubjects,

    /// Number Of Units
    @JsonKey(name: 'number_of_units') required int? numberOfUnits,

    /// Number Of Completed Units
    @JsonKey(name: 'number_of_completed_units')
    required int? numberOfCompletedUnits,
  }) = _SummaryResponse;

  factory SummaryResponse.fromJson(Map<String, dynamic> json) =>
      _$SummaryResponseFromJson(json);
}
