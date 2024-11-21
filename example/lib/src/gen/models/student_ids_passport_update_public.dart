import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_ids_passport_update_public.freezed.dart';
part 'student_ids_passport_update_public.g.dart';

@freezed
class StudentIdsPassportUpdatePublic with _$StudentIdsPassportUpdatePublic {
  const StudentIdsPassportUpdatePublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentIdsPassportUpdatePublic({
    /// Passport Number
    @JsonKey(name: 'passport_number') required String passportNumber,

    /// Passport Country Id
    @JsonKey(name: 'passport_country_id') required int passportCountryId,

    /// Passport Issuing Authority
    @JsonKey(name: 'passport_issuing_authority')
    required String passportIssuingAuthority,

    /// Passport Date Of Issue
    @JsonKey(name: 'passport_date_of_issue')
    required DateTime passportDateOfIssue,

    /// Passport Date Of Expiry
    @JsonKey(name: 'passport_date_of_expiry')
    required DateTime passportDateOfExpiry,
  }) = _StudentIdsPassportUpdatePublic;

  factory StudentIdsPassportUpdatePublic.fromJson(Map<String, dynamic> json) =>
      _$StudentIdsPassportUpdatePublicFromJson(json);
}
