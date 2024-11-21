import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'employee_public.freezed.dart';
part 'employee_public.g.dart';

///EmployeePublic

@freezed
class EmployeePublic with _$EmployeePublic {
  const EmployeePublic._();

  @JsonSerializable(converters: convertors)
  const factory EmployeePublic({
    /// Db User Id
    @JsonKey(name: 'db_user_id') required String? dbUserId,

    /// Id
    @JsonKey(name: 'id') required int id,

    /// Emp Ar First Name
    @JsonKey(name: 'emp_ar_first_name') required String empArFirstName,

    /// Emp Ar Second Name
    @JsonKey(name: 'emp_ar_second_name') required String empArSecondName,

    /// Emp Ar Third Name
    @JsonKey(name: 'emp_ar_third_name') required String empArThirdName,

    /// Emp Ar Fourth Name
    @JsonKey(name: 'emp_ar_fourth_name') required String empArFourthName,

    /// Tribe
    @JsonKey(name: 'tribe') required String tribe,

    /// Emp En First Name
    @JsonKey(name: 'emp_en_first_name') required String empEnFirstName,

    /// Emp En Second Name
    @JsonKey(name: 'emp_en_second_name') required String empEnSecondName,

    /// Emp En Third Name
    @JsonKey(name: 'emp_en_third_name') required String empEnThirdName,

    /// Emp En Fourth Name
    @JsonKey(name: 'emp_en_fourth_name') required String empEnFourthName,

    /// Mother First Name
    @JsonKey(name: 'mother_first_name') required String? motherFirstName,

    /// Mother Second Name
    @JsonKey(name: 'mother_second_name') required String? motherSecondName,

    /// Mother Third Name
    @JsonKey(name: 'mother_third_name') required String? motherThirdName,

    /// Gender
    @JsonKey(name: 'gender') required int gender,

    /// Date Of Birth
    @JsonKey(name: 'date_of_birth') required DateTime dateOfBirth,

    /// Nationality Id
    @JsonKey(name: 'nationality_id') required int nationalityId,

    /// Citizenship Type
    @JsonKey(name: 'citizenship_type') required int? citizenshipType,

    /// Nationalism Id
    @JsonKey(name: 'nationalism_id') required int nationalismId,

    /// Religion Id
    @JsonKey(name: 'religion_id') required int? religionId,

    /// Blood Group
    @JsonKey(name: 'blood_group') required int? bloodGroup,

    /// Country Id
    @JsonKey(name: 'country_id') required int countryId,

    /// City Of Birth
    @JsonKey(name: 'city_of_birth') required String? cityOfBirth,

    /// Marital Status
    @JsonKey(name: 'marital_status') required int? maritalStatus,

    /// Un
    @JsonKey(name: 'un') required String? un,

    /// College Id
    @JsonKey(name: 'college_id') required int collegeId,

    /// Is Send
    @JsonKey(name: 'is_send') required bool isSend,

    /// Is Approved
    @JsonKey(name: 'is_approved') required bool isApproved,

    /// Notes
    @JsonKey(name: 'notes') required String? notes,

    /// Approved By Id
    @JsonKey(name: 'approved_by_id') required String? approvedById,

    /// Date Of Approve
    @JsonKey(name: 'date_of_approve') required DateTime? dateOfApprove,

    /// Age Official Document Id
    @JsonKey(name: 'age_official_document_id')
    required int? ageOfficialDocumentId,

    /// Date Of Employment Approval
    @JsonKey(name: 'date_of_employment_approval')
    required DateTime? dateOfEmploymentApproval,

    /// Employment Approve Official Document Id
    @JsonKey(name: 'employment_approve_official_document_id')
    required int? employmentApproveOfficialDocumentId,

    /// Modified By
    @JsonKey(name: 'modified_by') required String modifiedBy,

    /// Modified Date Time
    @JsonKey(name: 'modified_date_time') required DateTime modifiedDateTime,

    /// Deletion Time
    @JsonKey(name: 'deletion_time') required DateTime? deletionTime,

    /// Name
    @JsonKey(name: 'name') required String? name,

    /// Full Name
    @JsonKey(name: 'full_name') required String fullName,
  }) = _EmployeePublic;

  factory EmployeePublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$EmployeePublicFromJson(json);
}
