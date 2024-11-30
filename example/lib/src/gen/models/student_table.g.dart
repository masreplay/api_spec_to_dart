// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentTableImpl _$$StudentTableImplFromJson(Map<String, dynamic> json) =>
    _$StudentTableImpl(
      arabicName1: json['arabic_name1'] as String?,
      arabicName2: json['arabic_name2'] as String?,
      arabicName3: json['arabic_name3'] as String?,
      arabicName4: json['arabic_name4'] as String?,
      englishName1: json['english_name1'] as String?,
      englishName2: json['english_name2'] as String?,
      englishName3: json['english_name3'] as String?,
      englishName4: json['english_name4'] as String?,
      arabicMotherName1: json['arabic_mother_name1'] as String?,
      arabicMotherName2: json['arabic_mother_name2'] as String?,
      arabicMotherName3: json['arabic_mother_name3'] as String?,
      englishMotherName1: json['english_mother_name1'] as String?,
      englishMotherName2: json['english_mother_name2'] as String?,
      englishMotherName3: json['english_mother_name3'] as String?,
      gender: json['gender'] == null
          ? GenderEnum?.value1
          : GenderEnum.fromJson((json['gender'] as num).toInt()),
      citizenshipType: json['citizenship_type'] == null
          ? CitizenshipTypeEnum?.value1
          : CitizenshipTypeEnum.fromJson(
              (json['citizenship_type'] as num).toInt()),
      bloodGroup: json['blood_group'] == null
          ? null
          : BloodGroupEnum.fromJson((json['blood_group'] as num).toInt()),
      dateOfBirth: json['date_of_birth'] == null
          ? null
          : DateTime.parse(json['date_of_birth'] as String),
      governorateId: (json['governorate_id'] as num?)?.toInt(),
      nationalityId: (json['nationality_id'] as num?)?.toInt(),
      nationalismId: (json['nationalism_id'] as num?)?.toInt(),
      religionId: (json['religion_id'] as num?)?.toInt(),
      postponeCourse: (json['postpone_course'] as num?)?.toInt(),
      universityNumber: (json['university_number'] as num?)?.toInt(),
      registered: json['registered'] as bool,
      acceptedByTheCollege: json['accepted_by_the_college'] as bool,
      checkRequest: json['check_request'] as bool,
      userId: json['user_id'] as String,
      phoneNumber: json['phone_number'] as String,
      email: json['email'] as String?,
      id: (json['id'] as num).toInt(),
      loginCredentials: json['login_credentials'] as String?,
      creationTime: DateTime.parse(json['creation_time'] as String),
    );

Map<String, dynamic> _$$StudentTableImplToJson(_$StudentTableImpl instance) =>
    <String, dynamic>{
      'arabic_name1': instance.arabicName1,
      'arabic_name2': instance.arabicName2,
      'arabic_name3': instance.arabicName3,
      'arabic_name4': instance.arabicName4,
      'english_name1': instance.englishName1,
      'english_name2': instance.englishName2,
      'english_name3': instance.englishName3,
      'english_name4': instance.englishName4,
      'arabic_mother_name1': instance.arabicMotherName1,
      'arabic_mother_name2': instance.arabicMotherName2,
      'arabic_mother_name3': instance.arabicMotherName3,
      'english_mother_name1': instance.englishMotherName1,
      'english_mother_name2': instance.englishMotherName2,
      'english_mother_name3': instance.englishMotherName3,
      'gender': instance.gender,
      'citizenship_type': instance.citizenshipType,
      'blood_group': instance.bloodGroup,
      'date_of_birth': instance.dateOfBirth?.toIso8601String(),
      'governorate_id': instance.governorateId,
      'nationality_id': instance.nationalityId,
      'nationalism_id': instance.nationalismId,
      'religion_id': instance.religionId,
      'postpone_course': instance.postponeCourse,
      'university_number': instance.universityNumber,
      'registered': instance.registered,
      'accepted_by_the_college': instance.acceptedByTheCollege,
      'check_request': instance.checkRequest,
      'user_id': instance.userId,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
      'id': instance.id,
      'login_credentials': instance.loginCredentials,
      'creation_time': instance.creationTime.toIso8601String(),
    };
