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
    /// School Name
    @JsonKey(name: 'school_name') required String? schoolName,

    /// Exam Number
    @JsonKey(name: 'exam_number') required String examNumber,

    /// Study Year Id
    @JsonKey(name: 'study_year_id') required int? studyYearId,

    /// Directorate Name
    @JsonKey(name: 'directorate_name') required String? directorateName,

    /// Average
    @JsonKey(name: 'average') required num? average,

    /// Total
    @JsonKey(name: 'total') required num? total,

    /// Round
    @JsonKey(name: 'round') required int? round,

    /// Number Of Failure Years
    @JsonKey(name: 'number_of_failure_years')
    required int? numberOfFailureYears,

    /// Governorate Id
    @JsonKey(name: 'governorate_id') required int? governorateId,

    /// Specialization Id
    @JsonKey(name: 'specialization_id') required int? specializationId,
  }) = _StudentRegistrationSchoolInfoUpdateRequest;

  factory StudentRegistrationSchoolInfoUpdateRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentRegistrationSchoolInfoUpdateRequestFromJson(json);
}
