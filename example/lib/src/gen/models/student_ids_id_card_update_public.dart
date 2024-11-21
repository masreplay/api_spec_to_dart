import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_ids_id_card_update_public.freezed.dart';
part 'student_ids_id_card_update_public.g.dart';

///StudentIdsIdCardUpdatePublic

@freezed
class StudentIdsIdCardUpdatePublic with _$StudentIdsIdCardUpdatePublic {
  const StudentIdsIdCardUpdatePublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentIdsIdCardUpdatePublic({
    /// Identification Card Number
    @JsonKey(name: 'identification_card_number')
    required String identificationCardNumber,

    /// Identification Card Record
    @JsonKey(name: 'identification_card_record')
    required String identificationCardRecord,

    /// Identification Card Page
    @JsonKey(name: 'identification_card_page')
    required String identificationCardPage,

    /// Identification Card Issuing Authority
    @JsonKey(name: 'identification_card_issuing_authority')
    required String identificationCardIssuingAuthority,

    /// Identification Card Date Of Issue
    @JsonKey(name: 'identification_card_date_of_issue')
    required DateTime identificationCardDateOfIssue,
  }) = _StudentIdsIdCardUpdatePublic;

  factory StudentIdsIdCardUpdatePublic.fromJson(Map<String, dynamic> json) =>
      _$StudentIdsIdCardUpdatePublicFromJson(json);
}
