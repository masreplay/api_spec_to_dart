import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'employee_identification_cards_public.freezed.dart';
part 'employee_identification_cards_public.g.dart';

///EmployeeIdentificationCardsPublic

@freezed
class EmployeeIdentificationCardsPublic
    with _$EmployeeIdentificationCardsPublic {
  const EmployeeIdentificationCardsPublic._();

  @JsonSerializable(converters: convertors)
  const factory EmployeeIdentificationCardsPublic({
    /// Employee Identifications Card Id
    @JsonKey(name: 'employee_identifications_card_id')
    required int employeeIdentificationsCardId,

    /// Employee Id
    @JsonKey(name: 'employee_id') required int employeeId,

    /// Have National Card
    @JsonKey(name: 'have_national_card') required bool haveNationalCard,

    /// National Card Number
    @JsonKey(name: 'national_card_number') required String nationalCardNumber,

    /// National Card Serial Number
    @JsonKey(name: 'national_card_serial_number')
    required String nationalCardSerialNumber,

    /// National Card Issuing Authority
    @JsonKey(name: 'national_card_issuing_authority')
    required String nationalCardIssuingAuthority,

    /// National Card Issue Date
    @JsonKey(name: 'national_card_issue_date')
    required DateTime nationalCardIssueDate,

    /// National Card Date Of Expiry
    @JsonKey(name: 'national_card_date_of_expiry')
    required DateTime nationalCardDateOfExpiry,

    /// National Card Family Number
    @JsonKey(name: 'national_card_family_number')
    required String nationalCardFamilyNumber,

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

    /// Iraqi Nationality Certificate Number
    @JsonKey(name: 'iraqi_nationality_certificate_number')
    required String iraqiNationalityCertificateNumber,

    /// Iraqi Nationality Certificate Wallet Number
    @JsonKey(name: 'iraqi_nationality_certificate_wallet_number')
    required String iraqiNationalityCertificateWalletNumber,

    /// Iraqi Nationality Certificate Date Of Issue
    @JsonKey(name: 'iraqi_nationality_certificate_date_of_issue')
    required DateTime iraqiNationalityCertificateDateOfIssue,

    /// Iraqi Nationality Certificate Issuing Authority
    @JsonKey(name: 'iraqi_nationality_certificate_issuing_authority')
    required String iraqiNationalityCertificateIssuingAuthority,

    /// Information Bureau Id
    @JsonKey(name: 'information_bureau_id') required int informationBureauId,

    /// Information Bureau Name
    @JsonKey(name: 'information_bureau_name')
    required String informationBureauName,

    /// Iraqi Residence Card Home Number
    @JsonKey(name: 'iraqi_residence_card_home_number')
    required String iraqiResidenceCardHomeNumber,

    /// Iraqi Residence Card Street Address
    @JsonKey(name: 'iraqi_residence_card_street_address')
    required String iraqiResidenceCardStreetAddress,

    /// Iraqi Residence Card Quarter Address
    @JsonKey(name: 'iraqi_residence_card_quarter_address')
    required String iraqiResidenceCardQuarterAddress,

    /// Iraqi Residence Card Form Number
    @JsonKey(name: 'iraqi_residence_card_form_number')
    required String iraqiResidenceCardFormNumber,

    /// Iraqi Residence Card Sequence
    @JsonKey(name: 'iraqi_residence_card_sequence')
    required String iraqiResidenceCardSequence,

    /// Iraqi Residence Card Date Of Issue
    @JsonKey(name: 'iraqi_residence_card_date_of_issue')
    required DateTime iraqiResidenceCardDateOfIssue,

    /// Passport Number
    @JsonKey(name: 'passport_number') required String passportNumber,

    /// Passport Country Id
    @JsonKey(name: 'passport_country_id') required int passportCountryId,

    /// Passport Country Name
    @JsonKey(name: 'passport_country_name') required String passportCountryName,

    /// Passport Date Of Issue
    @JsonKey(name: 'passport_date_of_issue')
    required DateTime passportDateOfIssue,

    /// Passport Date Of Expiry
    @JsonKey(name: 'passport_date_of_expiry')
    required DateTime passportDateOfExpiry,
  }) = _EmployeeIdentificationCardsPublic;

  factory EmployeeIdentificationCardsPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$EmployeeIdentificationCardsPublicFromJson(
        json,
      );
}
