// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_identification_cards_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeIdentificationCardsPublicImpl
    _$$EmployeeIdentificationCardsPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$EmployeeIdentificationCardsPublicImpl(
          employeeIdentificationsCardId:
              (json['employee_identifications_card_id'] as num).toInt(),
          employeeId: (json['employee_id'] as num).toInt(),
          haveNationalCard: json['have_national_card'] as bool,
          nationalCardNumber: json['national_card_number'] as String,
          nationalCardSerialNumber:
              json['national_card_serial_number'] as String,
          nationalCardIssuingAuthority:
              json['national_card_issuing_authority'] as String,
          nationalCardIssueDate:
              DateTime.parse(json['national_card_issue_date'] as String),
          nationalCardDateOfExpiry:
              DateTime.parse(json['national_card_date_of_expiry'] as String),
          nationalCardFamilyNumber:
              json['national_card_family_number'] as String,
          identificationCardNumber:
              json['identification_card_number'] as String,
          identificationCardRecord:
              json['identification_card_record'] as String,
          identificationCardPage: json['identification_card_page'] as String,
          identificationCardIssuingAuthority:
              json['identification_card_issuing_authority'] as String,
          identificationCardDateOfIssue: DateTime.parse(
              json['identification_card_date_of_issue'] as String),
          iraqiNationalityCertificateNumber:
              json['iraqi_nationality_certificate_number'] as String,
          iraqiNationalityCertificateWalletNumber:
              json['iraqi_nationality_certificate_wallet_number'] as String,
          iraqiNationalityCertificateDateOfIssue: DateTime.parse(
              json['iraqi_nationality_certificate_date_of_issue'] as String),
          iraqiNationalityCertificateIssuingAuthority:
              json['iraqi_nationality_certificate_issuing_authority'] as String,
          informationBureauId: (json['information_bureau_id'] as num).toInt(),
          informationBureauName: json['information_bureau_name'] as String,
          iraqiResidenceCardHomeNumber:
              json['iraqi_residence_card_home_number'] as String,
          iraqiResidenceCardStreetAddress:
              json['iraqi_residence_card_street_address'] as String,
          iraqiResidenceCardQuarterAddress:
              json['iraqi_residence_card_quarter_address'] as String,
          iraqiResidenceCardFormNumber:
              json['iraqi_residence_card_form_number'] as String,
          iraqiResidenceCardSequence:
              json['iraqi_residence_card_sequence'] as String,
          iraqiResidenceCardDateOfIssue: DateTime.parse(
              json['iraqi_residence_card_date_of_issue'] as String),
          passportNumber: json['passport_number'] as String,
          passportCountryId: (json['passport_country_id'] as num).toInt(),
          passportCountryName: json['passport_country_name'] as String,
          passportDateOfIssue:
              DateTime.parse(json['passport_date_of_issue'] as String),
          passportDateOfExpiry:
              DateTime.parse(json['passport_date_of_expiry'] as String),
        );

Map<String, dynamic> _$$EmployeeIdentificationCardsPublicImplToJson(
        _$EmployeeIdentificationCardsPublicImpl instance) =>
    <String, dynamic>{
      'employee_identifications_card_id':
          instance.employeeIdentificationsCardId,
      'employee_id': instance.employeeId,
      'have_national_card': instance.haveNationalCard,
      'national_card_number': instance.nationalCardNumber,
      'national_card_serial_number': instance.nationalCardSerialNumber,
      'national_card_issuing_authority': instance.nationalCardIssuingAuthority,
      'national_card_issue_date':
          instance.nationalCardIssueDate.toIso8601String(),
      'national_card_date_of_expiry':
          instance.nationalCardDateOfExpiry.toIso8601String(),
      'national_card_family_number': instance.nationalCardFamilyNumber,
      'identification_card_number': instance.identificationCardNumber,
      'identification_card_record': instance.identificationCardRecord,
      'identification_card_page': instance.identificationCardPage,
      'identification_card_issuing_authority':
          instance.identificationCardIssuingAuthority,
      'identification_card_date_of_issue':
          instance.identificationCardDateOfIssue.toIso8601String(),
      'iraqi_nationality_certificate_number':
          instance.iraqiNationalityCertificateNumber,
      'iraqi_nationality_certificate_wallet_number':
          instance.iraqiNationalityCertificateWalletNumber,
      'iraqi_nationality_certificate_date_of_issue':
          instance.iraqiNationalityCertificateDateOfIssue.toIso8601String(),
      'iraqi_nationality_certificate_issuing_authority':
          instance.iraqiNationalityCertificateIssuingAuthority,
      'information_bureau_id': instance.informationBureauId,
      'information_bureau_name': instance.informationBureauName,
      'iraqi_residence_card_home_number': instance.iraqiResidenceCardHomeNumber,
      'iraqi_residence_card_street_address':
          instance.iraqiResidenceCardStreetAddress,
      'iraqi_residence_card_quarter_address':
          instance.iraqiResidenceCardQuarterAddress,
      'iraqi_residence_card_form_number': instance.iraqiResidenceCardFormNumber,
      'iraqi_residence_card_sequence': instance.iraqiResidenceCardSequence,
      'iraqi_residence_card_date_of_issue':
          instance.iraqiResidenceCardDateOfIssue.toIso8601String(),
      'passport_number': instance.passportNumber,
      'passport_country_id': instance.passportCountryId,
      'passport_country_name': instance.passportCountryName,
      'passport_date_of_issue': instance.passportDateOfIssue.toIso8601String(),
      'passport_date_of_expiry':
          instance.passportDateOfExpiry.toIso8601String(),
    };
