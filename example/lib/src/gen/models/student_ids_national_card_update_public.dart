import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_ids_national_card_update_public.freezed.dart';
part 'student_ids_national_card_update_public.g.dart';

///StudentIdsNationalCardUpdatePublic

@freezed
class StudentIdsNationalCardUpdatePublic
    with _$StudentIdsNationalCardUpdatePublic {
  const StudentIdsNationalCardUpdatePublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentIdsNationalCardUpdatePublic({
    /// National Card Number
    @JsonKey(name: 'national_card_number') required String nationalCardNumber,

    /// National Card Serial Number
    @JsonKey(name: 'national_card_serial_number')
    required String nationalCardSerialNumber,

    /// National Card Issuing Authority
    @JsonKey(name: 'national_card_issuing_authority')
    required String nationalCardIssuingAuthority,

    /// National Card Date Of Issue
    @JsonKey(name: 'national_card_date_of_issue')
    required DateTime nationalCardDateOfIssue,

    /// National Card Date Of Expiry
    @JsonKey(name: 'national_card_date_of_expiry')
    required DateTime nationalCardDateOfExpiry,

    /// National Card Family Number
    @JsonKey(name: 'national_card_family_number')
    required String nationalCardFamilyNumber,
  }) = _StudentIdsNationalCardUpdatePublic;

  factory StudentIdsNationalCardUpdatePublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentIdsNationalCardUpdatePublicFromJson(json);
}
