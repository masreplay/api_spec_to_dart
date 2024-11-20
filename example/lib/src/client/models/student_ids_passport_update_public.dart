import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_ids_passport_update_public.freezed.dart';
part 'student_ids_passport_update_public.g.dart';

@freezed
class StudentIdsPassportUpdatePublic with _$StudentIdsPassportUpdatePublic {
  const StudentIdsPassportUpdatePublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentIdsPassportUpdatePublic({
    @JsonKey(name: 'passport_number')

    /// Passport Number
    required String passportNumber,
    @JsonKey(name: 'passport_country_id')

    /// Passport Country Id
    required int passportCountryId,
    @JsonKey(name: 'passport_issuing_authority')

    /// Passport Issuing Authority
    required String passportIssuingAuthority,
    @JsonKey(name: 'passport_date_of_issue')

    /// Passport Date Of Issue
    required DateTime passportDateOfIssue,
    @JsonKey(name: 'passport_date_of_expiry')

    /// Passport Date Of Expiry
    required DateTime passportDateOfExpiry,
  }) = _StudentIdsPassportUpdatePublic;

  factory StudentIdsPassportUpdatePublic.fromJson(Map<String, dynamic> json) =>
      _$StudentIdsPassportUpdatePublicFromJson(json);
}
