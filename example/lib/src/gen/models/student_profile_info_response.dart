import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'student_profile_info_response.freezed.dart';
part 'student_profile_info_response.g.dart';

@freezed
class StudentProfileInfoResponse with _$StudentProfileInfoResponse {
  const StudentProfileInfoResponse._();

  @JsonSerializable(converters: convertors)
  const factory StudentProfileInfoResponse({
    /// First Name
    @JsonKey(name: 'first_name') required String? firstName,

    /// Second Name
    @JsonKey(name: 'second_name') required String? secondName,

    /// Third Name
    @JsonKey(name: 'third_name') required String? thirdName,

    /// Fourth Name
    @JsonKey(name: 'fourth_name') required String? fourthName,

    /// Email
    @JsonKey(name: 'email') required String? email,

    /// Phone Number
    @JsonKey(name: 'phone_number') required String? phoneNumber,

    /// University Number
    @JsonKey(name: 'university_number') required int? universityNumber,
    @JsonKey(name: 'profile_image') required FilePublic? profileImage,
  }) = _StudentProfileInfoResponse;

  factory StudentProfileInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentProfileInfoResponseFromJson(json);
}
