import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_collection_enum.g.dart';

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum FileCollectionEnum {
  certificate('certificate'),
  medicalTestImage('medical_test_image'),
  empSponsorshipImage('emp_sponsorship_image'),
  empProfileImage('emp_profile_image'),
  profileImage('profile_image'),
  nationalCardImage('national_card_image'),
  nationalCardImage2('national_card_image2'),
  identificationCardFrontImage('identification_card_front_image'),
  identificationCardBackImage('identification_card_back_image'),
  iqNationalityCertificateFrontImage('iq_nationality_certificate_front_image'),
  iqNationalityCertificateBackImage('iq_nationality_certificate_back_image'),
  residenceCardFrontImage('residence_card_front_image'),
  residenceCardBackImage('residence_card_back_image'),
  passportImage('passport_image'),
  ekycPassportImage('ekyc_passport_image'),
  ekycNationalCardFrontImage('ekyc_national_card_front_image'),
  ekycNationalCardFrontImageRaw('ekyc_national_card_front_image_raw'),
  ekycNationalCardBackImage('ekyc_national_card_back_image'),
  ekycNationalCardBackImageRaw('ekyc_national_card_back_image_raw'),
  ekycNfcRaw('ekyc_nfc_raw'),
  ekycMagnifeyeRecordRaw('ekyc_magnifeye_record_raw'),
  ekycTestingImage('ekyc_testing_image'),
  ekycFaceImage('ekyc_face_image'),
  ekycFaceImageRaw('ekyc_face_image_raw'),
  ekycPassportImageRaw('ekyc_passport_image_raw'),
  assignment('assignment'),
  announcement('announcement'),
  ;

  const FileCollectionEnum(this.value);

  factory FileCollectionEnum.fromJson(String value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
  final String value;

  String toJson() => _$FileCollectionEnumEnumMap[this]!;
}
