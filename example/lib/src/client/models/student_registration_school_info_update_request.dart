import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_registration_school_info_update_request.freezed.dart';
part 'student_registration_school_info_update_request.g.dart';

@freezed
class StudentRegistrationSchoolInfoUpdateRequest
    with _$StudentRegistrationSchoolInfoUpdateRequest {
  const StudentRegistrationSchoolInfoUpdateRequest._();

  @JsonSerializable(converters: convertors)
  const factory StudentRegistrationSchoolInfoUpdateRequest({
    @JsonKey(name: 'school_name')

    /// School Name
    required String? schoolName,
    @JsonKey(name: 'exam_number')

    /// Exam Number
    required String examNumber,
    @JsonKey(name: 'study_year_id')

    /// Study Year Id
    required int? studyYearId,
    @JsonKey(name: 'directorate_name')

    /// Directorate Name
    required String? directorateName,
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
    @JsonKey(name: 'governorate_id')

    /// Governorate Id
    required int? governorateId,
    @JsonKey(name: 'specialization_id')

    /// Specialization Id
    required int? specializationId,
  }) = _StudentRegistrationSchoolInfoUpdateRequest;

  factory StudentRegistrationSchoolInfoUpdateRequest.fromJson(
          Map<String, dynamic> json) =>
      _$StudentRegistrationSchoolInfoUpdateRequestFromJson(json);
}
