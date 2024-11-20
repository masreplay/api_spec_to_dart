import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'lecturer_auth_response.freezed.dart';
part 'lecturer_auth_response.g.dart';

@freezed
class LecturerAuthResponse with _$LecturerAuthResponse {
  const LecturerAuthResponse._();

  @JsonSerializable(converters: convertors)
  const factory LecturerAuthResponse({
    @JsonKey(name: 'access_token')

    /// Access Token
    required String accessToken,
    @JsonKey(name: 'expires_in')

    /// Expires In
    required int expiresIn,
    @JsonKey(name: 'refresh_token')

    /// Refresh Token
    required String refreshToken,
    @JsonKey(name: 'refresh_expires_in')

    /// Refresh Expires In
    required int refreshExpiresIn,
    @JsonKey(name: 'user_id')

    /// User Id
    required int userId,
    @Default(1) @JsonKey(name: 'user_role') required UserRole userRole,
  }) = _LecturerAuthResponse;

  factory LecturerAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$LecturerAuthResponseFromJson(json);
}
