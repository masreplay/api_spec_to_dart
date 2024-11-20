import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'student_profile_info_response.freezed.dart';
part 'student_profile_info_response.g.dart';

@freezed
class StudentProfileInfoResponse with _$StudentProfileInfoResponse {
  const factory StudentProfileInfoResponse({
    @JsonKey(name: 'first_name') required String? firstName,
    @JsonKey(name: 'second_name') required String? secondName,
    @JsonKey(name: 'third_name') required String? thirdName,
    @JsonKey(name: 'fourth_name') required String? fourthName,
    @JsonKey(name: 'email') required String? email,
    @JsonKey(name: 'phone_number') required String? phoneNumber,
    @JsonKey(name: 'university_number') required int? universityNumber,
    @JsonKey(name: 'profile_image') required FilePublic? profileImage,
  }) = _StudentProfileInfoResponse;

  factory StudentProfileInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentProfileInfoResponseFromJson(json);
}
