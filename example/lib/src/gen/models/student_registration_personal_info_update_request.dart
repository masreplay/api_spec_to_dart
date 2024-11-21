import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_registration_personal_info_update_request.freezed.dart';
part 'student_registration_personal_info_update_request.g.dart';

@freezed
class StudentRegistrationPersonalInfoUpdateRequest
    with _$StudentRegistrationPersonalInfoUpdateRequest {
  const StudentRegistrationPersonalInfoUpdateRequest._();

  @JsonSerializable(converters: convertors)
  const factory StudentRegistrationPersonalInfoUpdateRequest({
    /// Arabic Name1
    @JsonKey(name: 'arabic_name1') required String arabicName1,

    /// Arabic Name2
    @JsonKey(name: 'arabic_name2') required String arabicName2,

    /// Arabic Name3
    @JsonKey(name: 'arabic_name3') required String arabicName3,

    /// Arabic Name4
    @JsonKey(name: 'arabic_name4') required String arabicName4,

    /// English Name1
    @JsonKey(name: 'english_name1') required String englishName1,

    /// English Name2
    @JsonKey(name: 'english_name2') required String englishName2,

    /// English Name3
    @JsonKey(name: 'english_name3') required String englishName3,

    /// English Name4
    @JsonKey(name: 'english_name4') required String englishName4,

    /// Arabic Mother Name1
    @JsonKey(name: 'arabic_mother_name1') required String arabicMotherName1,

    /// Arabic Mother Name2
    @JsonKey(name: 'arabic_mother_name2') required String arabicMotherName2,

    /// Arabic Mother Name3
    @JsonKey(name: 'arabic_mother_name3') required String arabicMotherName3,

    /// English Mother Name1
    @JsonKey(name: 'english_mother_name1') required String englishMotherName1,

    /// English Mother Name2
    @JsonKey(name: 'english_mother_name2') required String englishMotherName2,

    /// English Mother Name3
    @JsonKey(name: 'english_mother_name3') required String englishMotherName3,
    @JsonKey(name: 'gender') required GenderEnum gender,
    @JsonKey(name: 'citizenship_type')
    required CitizenshipTypeEnum citizenshipType,
    @JsonKey(name: 'blood_group') required BloodGroupEnum bloodGroup,

    /// Date Of Birth
    @JsonKey(name: 'date_of_birth') required DateTime dateOfBirth,

    /// Governorate Id
    @JsonKey(name: 'governorate_id') required int governorateId,

    /// Nationality Id
    @JsonKey(name: 'nationality_id') required int nationalityId,

    /// Nationalism Id
    @JsonKey(name: 'nationalism_id') required int nationalismId,

    /// Religion Id
    @JsonKey(name: 'religion_id') required int religionId,

    /// Phone Number
    @JsonKey(name: 'phone_number') required String phoneNumber,

    /// Email
    @JsonKey(name: 'email') required String? email,
  }) = _StudentRegistrationPersonalInfoUpdateRequest;

  factory StudentRegistrationPersonalInfoUpdateRequest.fromJson(
          Map<String, dynamic> json) =>
      _$StudentRegistrationPersonalInfoUpdateRequestFromJson(json);
}
