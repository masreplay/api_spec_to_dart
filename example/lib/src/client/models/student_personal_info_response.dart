import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'student_personal_info_response.freezed.dart';
part 'student_personal_info_response.g.dart';

@freezed
class StudentPersonalInfoResponse with _$StudentPersonalInfoResponse {
  const StudentPersonalInfoResponse._();

  @JsonSerializable(converters: convertors)
  const factory StudentPersonalInfoResponse({
    @JsonKey(name: 'arabic_name1')

    /// Arabic Name1
    required String? arabicName1,
    @JsonKey(name: 'arabic_name2')

    /// Arabic Name2
    required String? arabicName2,
    @JsonKey(name: 'arabic_name3')

    /// Arabic Name3
    required String? arabicName3,
    @JsonKey(name: 'arabic_name4')

    /// Arabic Name4
    required String? arabicName4,
    @JsonKey(name: 'english_name1')

    /// English Name1
    required String? englishName1,
    @JsonKey(name: 'english_name2')

    /// English Name2
    required String? englishName2,
    @JsonKey(name: 'english_name3')

    /// English Name3
    required String? englishName3,
    @JsonKey(name: 'english_name4')

    /// English Name4
    required String? englishName4,
    @JsonKey(name: 'arabic_mother_name1')

    /// Arabic Mother Name1
    required String? arabicMotherName1,
    @JsonKey(name: 'arabic_mother_name2')

    /// Arabic Mother Name2
    required String? arabicMotherName2,
    @JsonKey(name: 'arabic_mother_name3')

    /// Arabic Mother Name3
    required String? arabicMotherName3,
    @JsonKey(name: 'english_mother_name1')

    /// English Mother Name1
    required String? englishMotherName1,
    @JsonKey(name: 'english_mother_name2')

    /// English Mother Name2
    required String? englishMotherName2,
    @JsonKey(name: 'english_mother_name3')

    /// English Mother Name3
    required String? englishMotherName3,
    @Default(1) @JsonKey(name: 'gender') required GenderEnum? gender,
    @Default(1)
    @JsonKey(name: 'citizenship_type')
    required CitizenshipTypeEnum? citizenshipType,
    @JsonKey(name: 'blood_group') required BloodGroupEnum? bloodGroup,
    @JsonKey(name: 'date_of_birth')

    /// Date Of Birth
    required DateTime? dateOfBirth,
    @JsonKey(name: 'governorate_id')

    /// Governorate Id
    required int? governorateId,
    @JsonKey(name: 'nationality_id')

    /// Nationality Id
    required int? nationalityId,
    @JsonKey(name: 'nationalism_id')

    /// Nationalism Id
    required int? nationalismId,
    @JsonKey(name: 'religion_id')

    /// Religion Id
    required int? religionId,
    @JsonKey(name: 'postpone_course')

    /// Postpone Course
    required int? postponeCourse,
    @JsonKey(name: 'university_number')

    /// University Number
    required int? universityNumber,
    @JsonKey(name: 'registered')

    /// Registered
    required bool registered,
    @JsonKey(name: 'accepted_by_the_college')

    /// Accepted By The College
    required bool acceptedByTheCollege,
    @JsonKey(name: 'check_request')

    /// Check Request
    required bool checkRequest,
    @JsonKey(name: 'user_id')

    /// User Id
    required String userId,
    @JsonKey(name: 'phone_number')

    /// Phone Number
    required String phoneNumber,
    @JsonKey(name: 'email')

    /// Email
    required String? email,
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'governorate') required GovernoratePublic? governorate,
    @JsonKey(name: 'religion') required ReligionPublic? religion,
    @JsonKey(name: 'nationalism') required NationalismsPublic? nationalism,
    @JsonKey(name: 'nationality') required NationalitiesPublic? nationality,
    @JsonKey(name: 'profile_image') required FilePublic? profileImage,
  }) = _StudentPersonalInfoResponse;

  factory StudentPersonalInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentPersonalInfoResponseFromJson(json);
}
