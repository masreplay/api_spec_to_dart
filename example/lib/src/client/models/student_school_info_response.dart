import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'student_school_info_response.freezed.dart';
part 'student_school_info_response.g.dart';

@freezed
class StudentSchoolInfoResponse with _$StudentSchoolInfoResponse {
  const StudentSchoolInfoResponse._();

  @JsonSerializable(converters: convertors)
  const factory StudentSchoolInfoResponse({
    @JsonKey(name: 'school_name')

    /// School Name
    required String? schoolName,
    @JsonKey(name: 'exam_number')

    /// Exam Number
    required String? examNumber,
    @JsonKey(name: 'study_year_id')

    /// Study Year Id
    required int? studyYearId,
    @JsonKey(name: 'governorate_id')

    /// Governorate Id
    required int? governorateId,
    @JsonKey(name: 'directorate_name')

    /// Directorate Name
    required String? directorateName,
    @JsonKey(name: 'specialization_id')

    /// Specialization Id
    required int? specializationId,
    @JsonKey(name: 'average')

    /// Average
    required num? average,
    @JsonKey(name: 'total')

    /// Total
    required num? total,
    @JsonKey(name: 'round')

    /// Round
    required int? round,
    @JsonKey(name: 'number_of_failure_years')

    /// Number Of Failure Years
    required int? numberOfFailureYears,
    @JsonKey(name: 'has_the_certificate_been_verified')

    /// Has The Certificate Been Verified
    required bool hasTheCertificateBeenVerified,
    @JsonKey(name: 'notes')

    /// Notes
    required String? notes,
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'university_id')

    /// University Id
    required int? universityId,
    @JsonKey(name: 'is_iraqi')

    /// Is Iraqi
    required bool? isIraqi,
    @JsonKey(name: 'has_national_card')

    /// Has National Card
    required bool? hasNationalCard,
    @JsonKey(name: 'study_year') required StudyYearPublic? studyYear,
    @JsonKey(name: 'governorate')

    /// Governorate
    required StringGovernoratePublic? governorate,
    @JsonKey(name: 'specialization')
    required SpecializationPublic? specialization,
    @JsonKey(name: 'front_image') required FilePublic? frontImage,
  }) = _StudentSchoolInfoResponse;

  factory StudentSchoolInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentSchoolInfoResponseFromJson(json);
}
