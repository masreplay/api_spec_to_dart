import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'employee_public.freezed.dart';
part 'employee_public.g.dart';

@freezed
class EmployeePublic with _$EmployeePublic {
  const EmployeePublic._();

  @JsonSerializable(converters: convertors)
  const factory EmployeePublic({
    @JsonKey(name: 'db_user_id')

    /// Db User Id
    required String? dbUserId,
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'emp_ar_first_name')

    /// Emp Ar First Name
    required String empArFirstName,
    @JsonKey(name: 'emp_ar_second_name')

    /// Emp Ar Second Name
    required String empArSecondName,
    @JsonKey(name: 'emp_ar_third_name')

    /// Emp Ar Third Name
    required String empArThirdName,
    @JsonKey(name: 'emp_ar_fourth_name')

    /// Emp Ar Fourth Name
    required String empArFourthName,
    @JsonKey(name: 'tribe')

    /// Tribe
    required String tribe,
    @JsonKey(name: 'emp_en_first_name')

    /// Emp En First Name
    required String empEnFirstName,
    @JsonKey(name: 'emp_en_second_name')

    /// Emp En Second Name
    required String empEnSecondName,
    @JsonKey(name: 'emp_en_third_name')

    /// Emp En Third Name
    required String empEnThirdName,
    @JsonKey(name: 'emp_en_fourth_name')

    /// Emp En Fourth Name
    required String empEnFourthName,
    @JsonKey(name: 'mother_first_name')

    /// Mother First Name
    required String? motherFirstName,
    @JsonKey(name: 'mother_second_name')

    /// Mother Second Name
    required String? motherSecondName,
    @JsonKey(name: 'mother_third_name')

    /// Mother Third Name
    required String? motherThirdName,
    @JsonKey(name: 'gender')

    /// Gender
    required int gender,
    @JsonKey(name: 'date_of_birth')

    /// Date Of Birth
    required DateTime dateOfBirth,
    @JsonKey(name: 'nationality_id')

    /// Nationality Id
    required int nationalityId,
    @JsonKey(name: 'citizenship_type')

    /// Citizenship Type
    required int? citizenshipType,
    @JsonKey(name: 'nationalism_id')

    /// Nationalism Id
    required int nationalismId,
    @JsonKey(name: 'religion_id')

    /// Religion Id
    required int? religionId,
    @JsonKey(name: 'blood_group')

    /// Blood Group
    required int? bloodGroup,
    @JsonKey(name: 'country_id')

    /// Country Id
    required int countryId,
    @JsonKey(name: 'city_of_birth')

    /// City Of Birth
    required String? cityOfBirth,
    @JsonKey(name: 'marital_status')

    /// Marital Status
    required int? maritalStatus,
    @JsonKey(name: 'un')

    /// Un
    required String? un,
    @JsonKey(name: 'college_id')

    /// College Id
    required int collegeId,
    @JsonKey(name: 'is_send')

    /// Is Send
    required bool isSend,
    @JsonKey(name: 'is_approved')

    /// Is Approved
    required bool isApproved,
    @JsonKey(name: 'notes')

    /// Notes
    required String? notes,
    @JsonKey(name: 'approved_by_id')

    /// Approved By Id
    required String? approvedById,
    @JsonKey(name: 'date_of_approve')

    /// Date Of Approve
    required DateTime? dateOfApprove,
    @JsonKey(name: 'age_official_document_id')

    /// Age Official Document Id
    required int? ageOfficialDocumentId,
    @JsonKey(name: 'date_of_employment_approval')

    /// Date Of Employment Approval
    required DateTime? dateOfEmploymentApproval,
    @JsonKey(name: 'employment_approve_official_document_id')

    /// Employment Approve Official Document Id
    required int? employmentApproveOfficialDocumentId,
    @JsonKey(name: 'modified_by')

    /// Modified By
    required String modifiedBy,
    @JsonKey(name: 'modified_date_time')

    /// Modified Date Time
    required DateTime modifiedDateTime,
    @JsonKey(name: 'deletion_time')

    /// Deletion Time
    required DateTime? deletionTime,
    @JsonKey(name: 'name')

    /// Name
    required String? name,
    @JsonKey(name: 'full_name')

    /// Full Name
    required String fullName,
  }) = _EmployeePublic;

  factory EmployeePublic.fromJson(Map<String, dynamic> json) =>
      _$EmployeePublicFromJson(json);
}
