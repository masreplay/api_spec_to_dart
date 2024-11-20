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

    /// Employee Identifications Card Id
    required int employeeIdentificationsCardId,
    @JsonKey(name: 'employee_id')

    /// Employee Id
    required int employeeId,
    @JsonKey(name: 'have_national_card')

    /// Have National Card
    required bool haveNationalCard,
    @JsonKey(name: 'national_card_number')

    /// National Card Number
    required String nationalCardNumber,
    @JsonKey(name: 'national_card_serial_number')

    /// National Card Serial Number
    required String nationalCardSerialNumber,
    @JsonKey(name: 'national_card_issuing_authority')

    /// National Card Issuing Authority
    required String nationalCardIssuingAuthority,
    @JsonKey(name: 'national_card_issue_date')

    /// National Card Issue Date
    required DateTime nationalCardIssueDate,
    @JsonKey(name: 'national_card_date_of_expiry')

    /// National Card Date Of Expiry
    required DateTime nationalCardDateOfExpiry,
    @JsonKey(name: 'national_card_family_number')

    /// National Card Family Number
    required String nationalCardFamilyNumber,
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
    @JsonKey(name: 'iraqi_nationality_certificate_number')

    /// Iraqi Nationality Certificate Number
    required String iraqiNationalityCertificateNumber,
    @JsonKey(name: 'iraqi_nationality_certificate_wallet_number')

    /// Iraqi Nationality Certificate Wallet Number
    required String iraqiNationalityCertificateWalletNumber,
    @JsonKey(name: 'iraqi_nationality_certificate_date_of_issue')

    /// Iraqi Nationality Certificate Date Of Issue
    required DateTime iraqiNationalityCertificateDateOfIssue,
    @JsonKey(name: 'iraqi_nationality_certificate_issuing_authority')

    /// Iraqi Nationality Certificate Issuing Authority
    required String iraqiNationalityCertificateIssuingAuthority,
    @JsonKey(name: 'information_bureau_id')

    /// Information Bureau Id
    required int informationBureauId,
    @JsonKey(name: 'information_bureau_name')

    /// Information Bureau Name
    required String informationBureauName,
    @JsonKey(name: 'iraqi_residence_card_home_number')

    /// Iraqi Residence Card Home Number
    required String iraqiResidenceCardHomeNumber,
    @JsonKey(name: 'iraqi_residence_card_street_address')

    /// Iraqi Residence Card Street Address
    required String iraqiResidenceCardStreetAddress,
    @JsonKey(name: 'iraqi_residence_card_quarter_address')

    /// Iraqi Residence Card Quarter Address
    required String iraqiResidenceCardQuarterAddress,
    @JsonKey(name: 'iraqi_residence_card_form_number')

    /// Iraqi Residence Card Form Number
    required String iraqiResidenceCardFormNumber,
    @JsonKey(name: 'iraqi_residence_card_sequence')

    /// Iraqi Residence Card Sequence
    required String iraqiResidenceCardSequence,
    @JsonKey(name: 'iraqi_residence_card_date_of_issue')

    /// Iraqi Residence Card Date Of Issue
    required DateTime iraqiResidenceCardDateOfIssue,
    @JsonKey(name: 'passport_number')

    /// Passport Number
    required String passportNumber,
    @JsonKey(name: 'passport_country_id')

    /// Passport Country Id
    required int passportCountryId,
    @JsonKey(name: 'passport_country_name')

    /// Passport Country Name
    required String passportCountryName,
    @JsonKey(name: 'passport_date_of_issue')

    /// Passport Date Of Issue
    required DateTime passportDateOfIssue,
    @JsonKey(name: 'passport_date_of_expiry')

    /// Passport Date Of Expiry
    required DateTime passportDateOfExpiry,
  }) = _EmployeeIdentificationCardsPublic;

  factory EmployeeIdentificationCardsPublic.fromJson(
          Map<String, dynamic> json) =>
      _$EmployeeIdentificationCardsPublicFromJson(json);
}
