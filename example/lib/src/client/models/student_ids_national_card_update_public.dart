import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_ids_national_card_update_public.freezed.dart';
part 'student_ids_national_card_update_public.g.dart';

@freezed
class StudentIdsNationalCardUpdatePublic
    with _$StudentIdsNationalCardUpdatePublic {
  const StudentIdsNationalCardUpdatePublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentIdsNationalCardUpdatePublic({
    @JsonKey(name: 'national_card_number')

    /// National Card Number
    required String nationalCardNumber,
    @JsonKey(name: 'national_card_serial_number')

    /// National Card Serial Number
    required String nationalCardSerialNumber,
    @JsonKey(name: 'national_card_issuing_authority')

    /// National Card Issuing Authority
    required String nationalCardIssuingAuthority,
    @JsonKey(name: 'national_card_date_of_issue')

    /// National Card Date Of Issue
    required DateTime nationalCardDateOfIssue,
    @JsonKey(name: 'national_card_date_of_expiry')

    /// National Card Date Of Expiry
    required DateTime nationalCardDateOfExpiry,
    @JsonKey(name: 'national_card_family_number')

    /// National Card Family Number
    required String nationalCardFamilyNumber,
  }) = _StudentIdsNationalCardUpdatePublic;

  factory StudentIdsNationalCardUpdatePublic.fromJson(
          Map<String, dynamic> json) =>
      _$StudentIdsNationalCardUpdatePublicFromJson(json);
}
