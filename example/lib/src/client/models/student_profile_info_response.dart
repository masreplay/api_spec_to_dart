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
    @JsonKey(name: 'first_name')

    /// First Name
    required String? firstName,
    @JsonKey(name: 'second_name')

    /// Second Name
    required String? secondName,
    @JsonKey(name: 'third_name')

    /// Third Name
    required String? thirdName,
    @JsonKey(name: 'fourth_name')

    /// Fourth Name
    required String? fourthName,
    @JsonKey(name: 'email')

    /// Email
    required String? email,
    @JsonKey(name: 'phone_number')

    /// Phone Number
    required String? phoneNumber,
    @JsonKey(name: 'university_number')

    /// University Number
    required int? universityNumber,
    @JsonKey(name: 'profile_image') required FilePublic? profileImage,
  }) = _StudentProfileInfoResponse;

  factory StudentProfileInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentProfileInfoResponseFromJson(json);
}
