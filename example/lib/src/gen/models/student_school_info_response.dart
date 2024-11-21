import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_school_info_response.freezed.dart';
part 'student_school_info_response.g.dart';

///StudentSchoolInfoResponse

@freezed
class StudentSchoolInfoResponse with _$StudentSchoolInfoResponse {
  const StudentSchoolInfoResponse._();

  @JsonSerializable(converters: convertors)
  const factory StudentSchoolInfoResponse({
    /// School Name
    @JsonKey(name: 'school_name') required String? schoolName,

    /// Exam Number
    @JsonKey(name: 'exam_number') required String? examNumber,

    /// Study Year Id
    @JsonKey(name: 'study_year_id') required int? studyYearId,

    /// Governorate Id
    @JsonKey(name: 'governorate_id') required int? governorateId,

    /// Directorate Name
    @JsonKey(name: 'directorate_name') required String? directorateName,

    /// Specialization Id
    @JsonKey(name: 'specialization_id') required int? specializationId,

    /// Average
    @JsonKey(name: 'average') required num? average,

    /// Total
    @JsonKey(name: 'total') required num? total,

    /// Round
    @JsonKey(name: 'round') required int? round,

    /// Number Of Failure Years
    @JsonKey(name: 'number_of_failure_years')
    required int? numberOfFailureYears,

    /// Has The Certificate Been Verified
    @JsonKey(name: 'has_the_certificate_been_verified')
    required bool hasTheCertificateBeenVerified,

    /// Notes
    @JsonKey(name: 'notes') required String? notes,

    /// Id
    @JsonKey(name: 'id') required int id,

    /// University Id
    @JsonKey(name: 'university_id') required int? universityId,

    /// Is Iraqi
    @JsonKey(name: 'is_iraqi') required bool? isIraqi,

    /// Has National Card
    @JsonKey(name: 'has_national_card') required bool? hasNationalCard,
    @JsonKey(name: 'study_year') required StudyYearPublic? studyYear,
    @JsonKey(name: 'governorate') required GovernoratePublic? governorate,
    @JsonKey(name: 'specialization')
    required SpecializationPublic? specialization,
    @JsonKey(name: 'front_image') required FilePublic? frontImage,
  }) = _StudentSchoolInfoResponse;

  factory StudentSchoolInfoResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentSchoolInfoResponseFromJson(json);
}
