import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'summary_response.freezed.dart';
part 'summary_response.g.dart';

@freezed
class SummaryResponse with _$SummaryResponse {
  const SummaryResponse._();

  @JsonSerializable(converters: convertors)
  const factory SummaryResponse({
    @JsonKey(name: 'number_of_collage_subjects')
    required int? numberOfCollageSubjects,
    @JsonKey(name: 'number_of_units') required int? numberOfUnits,
    @JsonKey(name: 'number_of_completed_units')
    required int? numberOfCompletedUnits,
  }) = _SummaryResponse;

  factory SummaryResponse.fromJson(Map<String, dynamic> json) =>
      _$SummaryResponseFromJson(json);
}
