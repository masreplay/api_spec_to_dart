import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'employee_identification_cards_public.freezed.dart';
part 'employee_identification_cards_public.g.dart';

@freezed
class EmployeeIdentificationCardsPublic
    with _$EmployeeIdentificationCardsPublic {
  const EmployeeIdentificationCardsPublic._();

  @JsonSerializable(converters: convertors)
  const factory EmployeeIdentificationCardsPublic({
    @JsonKey(name: 'employee_identifications_card_id')
    required int employeeIdentificationsCardId,
    @JsonKey(name: 'employee_id') required int employeeId,
    @JsonKey(name: 'have_national_card') required bool haveNationalCard,
    @JsonKey(name: 'national_card_number') required String nationalCardNumber,
    @JsonKey(name: 'national_card_serial_number')
    required String nationalCardSerialNumber,
    @JsonKey(name: 'national_card_issuing_authority')
    required String nationalCardIssuingAuthority,
    @JsonKey(name: 'national_card_issue_date')
    required DateTime nationalCardIssueDate,
    @JsonKey(name: 'national_card_date_of_expiry')
    required DateTime nationalCardDateOfExpiry,
    @JsonKey(name: 'national_card_family_number')
    required String nationalCardFamilyNumber,
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
    @JsonKey(name: 'iraqi_nationality_certificate_number')
    required String iraqiNationalityCertificateNumber,
    @JsonKey(name: 'iraqi_nationality_certificate_wallet_number')
    required String iraqiNationalityCertificateWalletNumber,
    @JsonKey(name: 'iraqi_nationality_certificate_date_of_issue')
    required DateTime iraqiNationalityCertificateDateOfIssue,
    @JsonKey(name: 'iraqi_nationality_certificate_issuing_authority')
    required String iraqiNationalityCertificateIssuingAuthority,
    @JsonKey(name: 'information_bureau_id') required int informationBureauId,
    @JsonKey(name: 'information_bureau_name')
    required String informationBureauName,
    @JsonKey(name: 'iraqi_residence_card_home_number')
    required String iraqiResidenceCardHomeNumber,
    @JsonKey(name: 'iraqi_residence_card_street_address')
    required String iraqiResidenceCardStreetAddress,
    @JsonKey(name: 'iraqi_residence_card_quarter_address')
    required String iraqiResidenceCardQuarterAddress,
    @JsonKey(name: 'iraqi_residence_card_form_number')
    required String iraqiResidenceCardFormNumber,
    @JsonKey(name: 'iraqi_residence_card_sequence')
    required String iraqiResidenceCardSequence,
    @JsonKey(name: 'iraqi_residence_card_date_of_issue')
    required DateTime iraqiResidenceCardDateOfIssue,
    @JsonKey(name: 'passport_number') required String passportNumber,
    @JsonKey(name: 'passport_country_id') required int passportCountryId,
    @JsonKey(name: 'passport_country_name') required String passportCountryName,
    @JsonKey(name: 'passport_date_of_issue')
    required DateTime passportDateOfIssue,
    @JsonKey(name: 'passport_date_of_expiry')
    required DateTime passportDateOfExpiry,
  }) = _EmployeeIdentificationCardsPublic;

  factory EmployeeIdentificationCardsPublic.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeIdentificationCardsPublicFromJson(json);
}
