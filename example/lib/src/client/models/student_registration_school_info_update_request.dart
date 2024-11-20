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
    @JsonKey(name: 'school_name') required String? schoolName,
    @JsonKey(name: 'exam_number') required String examNumber,
    @JsonKey(name: 'study_year_id') required int? studyYearId,
    @JsonKey(name: 'directorate_name') required String? directorateName,
    @JsonKey(name: 'average') required num? average,
    @JsonKey(name: 'total') required num? total,
    @JsonKey(name: 'round') required int? round,
    @JsonKey(name: 'number_of_failure_years')
    required int? numberOfFailureYears,
    @JsonKey(name: 'governorate_id') required int? governorateId,
    @JsonKey(name: 'specialization_id') required int? specializationId,
  }) = _StudentRegistrationSchoolInfoUpdateRequest;

  factory StudentRegistrationSchoolInfoUpdateRequest.fromJson(
          Map<String, dynamic> json) =>
      _$StudentRegistrationSchoolInfoUpdateRequestFromJson(json);
}
