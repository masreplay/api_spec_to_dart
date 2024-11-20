import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_ids_id_card_update_public.freezed.dart';
part 'student_ids_id_card_update_public.g.dart';

@freezed
class StudentIdsIdCardUpdatePublic with _$StudentIdsIdCardUpdatePublic {
  const factory StudentIdsIdCardUpdatePublic({
    @JsonKey(name: 'identification_card_number')
    required String identificationCardNumber,
    @JsonKey(name: 'identification_card_record')
    required String identificationCardRecord,
    @JsonKey(name: 'identification_card_page')
    required String identificationCardPage,
    @JsonKey(name: 'identification_card_issuing_authority')
    required String identificationCardIssuingAuthority,
    @JsonKey(name: 'identification_card_date_of_issue')
    required DateTime identificationCardDateOfIssue,
  }) = _StudentIdsIdCardUpdatePublic;

  factory StudentIdsIdCardUpdatePublic.fromJson(Map<String, dynamic> json) =>
      _$StudentIdsIdCardUpdatePublicFromJson(json);
}
