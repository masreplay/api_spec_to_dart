import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_ids_id_card_update_public.freezed.dart';
part 'student_ids_id_card_update_public.g.dart';

@freezed
class StudentIdsIdCardUpdatePublic with _$StudentIdsIdCardUpdatePublic {
  const StudentIdsIdCardUpdatePublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentIdsIdCardUpdatePublic({
    @JsonKey(name: 'identification_card_number')

    /// Identification Card Number
    required String identificationCardNumber,
    @JsonKey(name: 'identification_card_record')

    /// Identification Card Record
    required String identificationCardRecord,
    @JsonKey(name: 'identification_card_page')

    /// Identification Card Page
    required String identificationCardPage,
    @JsonKey(name: 'identification_card_issuing_authority')

    /// Identification Card Issuing Authority
    required String identificationCardIssuingAuthority,
    @JsonKey(name: 'identification_card_date_of_issue')

    /// Identification Card Date Of Issue
    required DateTime identificationCardDateOfIssue,
  }) = _StudentIdsIdCardUpdatePublic;

  factory StudentIdsIdCardUpdatePublic.fromJson(Map<String, dynamic> json) =>
      _$StudentIdsIdCardUpdatePublicFromJson(json);
}
