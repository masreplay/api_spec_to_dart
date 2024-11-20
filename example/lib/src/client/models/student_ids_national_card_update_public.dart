import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_ids_national_card_update_public.freezed.dart';
part 'student_ids_national_card_update_public.g.dart';

@freezed
class StudentIdsNationalCardUpdatePublic
    with _$StudentIdsNationalCardUpdatePublic {
  const factory StudentIdsNationalCardUpdatePublic({
    @JsonKey(name: 'national_card_number') required String nationalCardNumber,
    @JsonKey(name: 'national_card_serial_number')
    required String nationalCardSerialNumber,
    @JsonKey(name: 'national_card_issuing_authority')
    required String nationalCardIssuingAuthority,
    @JsonKey(name: 'national_card_date_of_issue')
    required DateTime nationalCardDateOfIssue,
    @JsonKey(name: 'national_card_date_of_expiry')
    required DateTime nationalCardDateOfExpiry,
    @JsonKey(name: 'national_card_family_number')
    required String nationalCardFamilyNumber,
  }) = _StudentIdsNationalCardUpdatePublic;

  factory StudentIdsNationalCardUpdatePublic.fromJson(
          Map<String, dynamic> json) =>
      _$StudentIdsNationalCardUpdatePublicFromJson(json);
}
