// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_profile_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentProfileInfoResponseImpl _$$StudentProfileInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentProfileInfoResponseImpl(
      firstName: json['first_name'] as String?,
      secondName: json['second_name'] as String?,
      thirdName: json['third_name'] as String?,
      fourthName: json['fourth_name'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phone_number'] as String?,
      universityNumber: (json['university_number'] as num?)?.toInt(),
      profileImage: json['profile_image'] == null
          ? null
          : FilePublic.fromJson(json['profile_image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StudentProfileInfoResponseImplToJson(
        _$StudentProfileInfoResponseImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'second_name': instance.secondName,
      'third_name': instance.thirdName,
      'fourth_name': instance.fourthName,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'university_number': instance.universityNumber,
      'profile_image': instance.profileImage,
    };
