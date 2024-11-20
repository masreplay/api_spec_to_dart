import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'student_school_info_response.freezed.dart';
part 'student_school_info_response.g.dart';

@freezed
class StudentSchoolInfoResponse with _$StudentSchoolInfoResponse {
  const factory StudentSchoolInfoResponse({
    @JsonKey(name: 'school_name') required String? schoolName,
    @JsonKey(name: 'exam_number') required String? examNumber,
    @JsonKey(name: 'study_year_id') required int? studyYearId,
    @JsonKey(name: 'governorate_id') required int? governorateId,
    @JsonKey(name: 'directorate_name') required String? directorateName,
    @JsonKey(name: 'specialization_id') required int? specializationId,
    @JsonKey(name: 'average') required num? average,
    @JsonKey(name: 'total') required num? total,
    @JsonKey(name: 'round') required int? round,
    @JsonKey(name: 'number_of_failure_years')
    required int? numberOfFailureYears,
    @JsonKey(name: 'has_the_certificate_been_verified')
    required bool hasTheCertificateBeenVerified,
    @JsonKey(name: 'notes') required String? notes,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'university_id') required int? universityId,
    @JsonKey(name: 'is_iraqi') required bool? isIraqi,
    @JsonKey(name: 'has_national_card') required bool? hasNationalCard,
    @JsonKey(name: 'study_year') required StudyYearPublic? studyYear,
    @JsonKey(name: 'governorate') required StringGovernoratePublic? governorate,
    @JsonKey(name: 'specialization')
    required SpecializationPublic? specialization,
    @JsonKey(name: 'front_image') required FilePublic? frontImage,
  }) = _StudentSchoolInfoResponse;

  factory StudentSchoolInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentSchoolInfoResponseFromJson(json);
}
