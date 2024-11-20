import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'student_auth_response.freezed.dart';
part 'student_auth_response.g.dart';

@freezed
class StudentAuthResponse with _$StudentAuthResponse {
  const StudentAuthResponse._();

  @JsonSerializable(converters: convertors)
  const factory StudentAuthResponse({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'expires_in') required int expiresIn,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'refresh_expires_in') required int refreshExpiresIn,
    @JsonKey(name: 'user_id') required int userId,
    @Default(0) @JsonKey(name: 'user_role') required UserRole userRole,
    @JsonKey(name: 'status') required AuthenticationStatusResponse status,
  }) = _StudentAuthResponse;

  factory StudentAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentAuthResponseFromJson(json);
}
