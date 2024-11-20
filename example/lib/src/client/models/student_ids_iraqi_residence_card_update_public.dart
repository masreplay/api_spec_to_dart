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
    @JsonKey(name: 'information_bureau_id')

    /// Information Bureau Id
    required int informationBureauId,
    @JsonKey(name: 'iraqi_residence_card_home_address')

    /// Iraqi Residence Card Home Address
    required String iraqiResidenceCardHomeAddress,
    @JsonKey(name: 'iraqi_residence_card_street_address')

    /// Iraqi Residence Card Street Address
    required String iraqiResidenceCardStreetAddress,
    @JsonKey(name: 'iraqi_residence_card_quarter_address')

    /// Iraqi Residence Card Quarter Address
    required String iraqiResidenceCardQuarterAddress,
    @JsonKey(name: 'iraqi_residence_card_form_number')

    /// Iraqi Residence Card Form Number
    required String iraqiResidenceCardFormNumber,
    @JsonKey(name: 'iraqi_residence_card_sequence')

    /// Iraqi Residence Card Sequence
    required String iraqiResidenceCardSequence,
    @JsonKey(name: 'iraqi_residence_card_date_of_issue')

    /// Iraqi Residence Card Date Of Issue
    required DateTime iraqiResidenceCardDateOfIssue,
  }) = _StudentIdsIraqiResidenceCardUpdatePublic;

  factory StudentIdsIraqiResidenceCardUpdatePublic.fromJson(
          Map<String, dynamic> json) =>
      _$StudentIdsIraqiResidenceCardUpdatePublicFromJson(json);
}
