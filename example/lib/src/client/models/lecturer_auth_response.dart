import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'lecturer_auth_response.freezed.dart';
part 'lecturer_auth_response.g.dart';

@freezed
class LecturerAuthResponse with _$LecturerAuthResponse {
  const factory LecturerAuthResponse({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'expires_in') required int expiresIn,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'refresh_expires_in') required int refreshExpiresIn,
    @JsonKey(name: 'user_id') required int userId,
    @Default(1) @JsonKey(name: 'user_role') required UserRole userRole,
  }) = _LecturerAuthResponse;

  factory LecturerAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$LecturerAuthResponseFromJson(json);
}
