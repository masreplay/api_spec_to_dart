import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_ids_iraqi_residence_card_update_public.freezed.dart';
part 'student_ids_iraqi_residence_card_update_public.g.dart';

@freezed
class StudentIdsIraqiResidenceCardUpdatePublic
    with _$StudentIdsIraqiResidenceCardUpdatePublic {
  const StudentIdsIraqiResidenceCardUpdatePublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentIdsIraqiResidenceCardUpdatePublic({
    /// Information Bureau Id
    @JsonKey(name: 'information_bureau_id') required int informationBureauId,

    /// Iraqi Residence Card Home Address
    @JsonKey(name: 'iraqi_residence_card_home_address')
    required String iraqiResidenceCardHomeAddress,

    /// Iraqi Residence Card Street Address
    @JsonKey(name: 'iraqi_residence_card_street_address')
    required String iraqiResidenceCardStreetAddress,

    /// Iraqi Residence Card Quarter Address
    @JsonKey(name: 'iraqi_residence_card_quarter_address')
    required String iraqiResidenceCardQuarterAddress,

    /// Iraqi Residence Card Form Number
    @JsonKey(name: 'iraqi_residence_card_form_number')
    required String iraqiResidenceCardFormNumber,

    /// Iraqi Residence Card Sequence
    @JsonKey(name: 'iraqi_residence_card_sequence')
    required String iraqiResidenceCardSequence,

    /// Iraqi Residence Card Date Of Issue
    @JsonKey(name: 'iraqi_residence_card_date_of_issue')
    required DateTime iraqiResidenceCardDateOfIssue,
  }) = _StudentIdsIraqiResidenceCardUpdatePublic;

  factory StudentIdsIraqiResidenceCardUpdatePublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentIdsIraqiResidenceCardUpdatePublicFromJson(json);
}
