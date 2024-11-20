import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_ids_passport_update_public.freezed.dart';
part 'student_ids_passport_update_public.g.dart';

@freezed
class StudentIdsPassportUpdatePublic with _$StudentIdsPassportUpdatePublic {
  const factory StudentIdsPassportUpdatePublic({
    @JsonKey(name: 'passport_number') required String passportNumber,
    @JsonKey(name: 'passport_country_id') required int passportCountryId,
    @JsonKey(name: 'passport_issuing_authority')
    required String passportIssuingAuthority,
    @JsonKey(name: 'passport_date_of_issue')
    required DateTime passportDateOfIssue,
    @JsonKey(name: 'passport_date_of_expiry')
    required DateTime passportDateOfExpiry,
  }) = _StudentIdsPassportUpdatePublic;

  factory StudentIdsPassportUpdatePublic.fromJson(Map<String, dynamic> json) =>
      _$StudentIdsPassportUpdatePublicFromJson(json);
}
