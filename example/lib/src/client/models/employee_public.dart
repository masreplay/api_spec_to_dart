import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_public.freezed.dart';
part 'employee_public.g.dart';

@freezed
class EmployeePublic with _$EmployeePublic {
  const factory EmployeePublic({
    @JsonKey(name: 'db_user_id') required String? dbUserId,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'emp_ar_first_name') required String empArFirstName,
    @JsonKey(name: 'emp_ar_second_name') required String empArSecondName,
    @JsonKey(name: 'emp_ar_third_name') required String empArThirdName,
    @JsonKey(name: 'emp_ar_fourth_name') required String empArFourthName,
    @JsonKey(name: 'tribe') required String tribe,
    @JsonKey(name: 'emp_en_first_name') required String empEnFirstName,
    @JsonKey(name: 'emp_en_second_name') required String empEnSecondName,
    @JsonKey(name: 'emp_en_third_name') required String empEnThirdName,
    @JsonKey(name: 'emp_en_fourth_name') required String empEnFourthName,
    @JsonKey(name: 'mother_first_name') required String? motherFirstName,
    @JsonKey(name: 'mother_second_name') required String? motherSecondName,
    @JsonKey(name: 'mother_third_name') required String? motherThirdName,
    @JsonKey(name: 'gender') required int gender,
    @JsonKey(name: 'date_of_birth') required DateTime dateOfBirth,
    @JsonKey(name: 'nationality_id') required int nationalityId,
    @JsonKey(name: 'citizenship_type') required int? citizenshipType,
    @JsonKey(name: 'nationalism_id') required int nationalismId,
    @JsonKey(name: 'religion_id') required int? religionId,
    @JsonKey(name: 'blood_group') required int? bloodGroup,
    @JsonKey(name: 'country_id') required int countryId,
    @JsonKey(name: 'city_of_birth') required String? cityOfBirth,
    @JsonKey(name: 'marital_status') required int? maritalStatus,
    @JsonKey(name: 'un') required String? un,
    @JsonKey(name: 'college_id') required int collegeId,
    @JsonKey(name: 'is_send') required bool isSend,
    @JsonKey(name: 'is_approved') required bool isApproved,
    @JsonKey(name: 'notes') required String? notes,
    @JsonKey(name: 'approved_by_id') required String? approvedById,
    @JsonKey(name: 'date_of_approve') required DateTime? dateOfApprove,
    @JsonKey(name: 'age_official_document_id')
    required int? ageOfficialDocumentId,
    @JsonKey(name: 'date_of_employment_approval')
    required DateTime? dateOfEmploymentApproval,
    @JsonKey(name: 'employment_approve_official_document_id')
    required int? employmentApproveOfficialDocumentId,
    @JsonKey(name: 'modified_by') required String modifiedBy,
    @JsonKey(name: 'modified_date_time') required DateTime modifiedDateTime,
    @JsonKey(name: 'deletion_time') required DateTime? deletionTime,
    @JsonKey(name: 'name') required String? name,
    @JsonKey(name: 'full_name') required String fullName,
  }) = _EmployeePublic;

  factory EmployeePublic.fromJson(Map<String, dynamic> json) =>
      _$EmployeePublicFromJson(json);
}
