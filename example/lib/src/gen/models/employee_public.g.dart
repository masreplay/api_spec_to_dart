// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeePublicImpl _$$EmployeePublicImplFromJson(Map<String, dynamic> json) =>
    _$EmployeePublicImpl(
      dbUserId: json['db_user_id'] as String?,
      id: (json['id'] as num).toInt(),
      empArFirstName: json['emp_ar_first_name'] as String,
      empArSecondName: json['emp_ar_second_name'] as String,
      empArThirdName: json['emp_ar_third_name'] as String,
      empArFourthName: json['emp_ar_fourth_name'] as String,
      tribe: json['tribe'] as String,
      empEnFirstName: json['emp_en_first_name'] as String,
      empEnSecondName: json['emp_en_second_name'] as String,
      empEnThirdName: json['emp_en_third_name'] as String,
      empEnFourthName: json['emp_en_fourth_name'] as String,
      motherFirstName: json['mother_first_name'] as String?,
      motherSecondName: json['mother_second_name'] as String?,
      motherThirdName: json['mother_third_name'] as String?,
      gender: (json['gender'] as num).toInt(),
      dateOfBirth: DateTime.parse(json['date_of_birth'] as String),
      nationalityId: (json['nationality_id'] as num).toInt(),
      citizenshipType: (json['citizenship_type'] as num?)?.toInt(),
      nationalismId: (json['nationalism_id'] as num).toInt(),
      religionId: (json['religion_id'] as num?)?.toInt(),
      bloodGroup: (json['blood_group'] as num?)?.toInt(),
      countryId: (json['country_id'] as num).toInt(),
      cityOfBirth: json['city_of_birth'] as String?,
      maritalStatus: (json['marital_status'] as num?)?.toInt(),
      un: json['un'] as String?,
      collegeId: (json['college_id'] as num).toInt(),
      isSend: json['is_send'] as bool,
      isApproved: json['is_approved'] as bool,
      notes: json['notes'] as String?,
      approvedById: json['approved_by_id'] as String?,
      dateOfApprove: json['date_of_approve'] == null
          ? null
          : DateTime.parse(json['date_of_approve'] as String),
      ageOfficialDocumentId:
          (json['age_official_document_id'] as num?)?.toInt(),
      dateOfEmploymentApproval: json['date_of_employment_approval'] == null
          ? null
          : DateTime.parse(json['date_of_employment_approval'] as String),
      employmentApproveOfficialDocumentId:
          (json['employment_approve_official_document_id'] as num?)?.toInt(),
      modifiedBy: json['modified_by'] as String,
      modifiedDateTime: DateTime.parse(json['modified_date_time'] as String),
      deletionTime: json['deletion_time'] == null
          ? null
          : DateTime.parse(json['deletion_time'] as String),
      name: json['name'] as String?,
      fullName: json['full_name'] as String,
    );

Map<String, dynamic> _$$EmployeePublicImplToJson(
        _$EmployeePublicImpl instance) =>
    <String, dynamic>{
      'db_user_id': instance.dbUserId,
      'id': instance.id,
      'emp_ar_first_name': instance.empArFirstName,
      'emp_ar_second_name': instance.empArSecondName,
      'emp_ar_third_name': instance.empArThirdName,
      'emp_ar_fourth_name': instance.empArFourthName,
      'tribe': instance.tribe,
      'emp_en_first_name': instance.empEnFirstName,
      'emp_en_second_name': instance.empEnSecondName,
      'emp_en_third_name': instance.empEnThirdName,
      'emp_en_fourth_name': instance.empEnFourthName,
      'mother_first_name': instance.motherFirstName,
      'mother_second_name': instance.motherSecondName,
      'mother_third_name': instance.motherThirdName,
      'gender': instance.gender,
      'date_of_birth': instance.dateOfBirth.toIso8601String(),
      'nationality_id': instance.nationalityId,
      'citizenship_type': instance.citizenshipType,
      'nationalism_id': instance.nationalismId,
      'religion_id': instance.religionId,
      'blood_group': instance.bloodGroup,
      'country_id': instance.countryId,
      'city_of_birth': instance.cityOfBirth,
      'marital_status': instance.maritalStatus,
      'un': instance.un,
      'college_id': instance.collegeId,
      'is_send': instance.isSend,
      'is_approved': instance.isApproved,
      'notes': instance.notes,
      'approved_by_id': instance.approvedById,
      'date_of_approve': instance.dateOfApprove?.toIso8601String(),
      'age_official_document_id': instance.ageOfficialDocumentId,
      'date_of_employment_approval':
          instance.dateOfEmploymentApproval?.toIso8601String(),
      'employment_approve_official_document_id':
          instance.employmentApproveOfficialDocumentId,
      'modified_by': instance.modifiedBy,
      'modified_date_time': instance.modifiedDateTime.toIso8601String(),
      'deletion_time': instance.deletionTime?.toIso8601String(),
      'name': instance.name,
      'full_name': instance.fullName,
    };
