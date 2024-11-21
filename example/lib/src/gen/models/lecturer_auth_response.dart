import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'lecturer_auth_response.freezed.dart';
part 'lecturer_auth_response.g.dart';

@freezed
class LecturerAuthResponse with _$LecturerAuthResponse {
  const LecturerAuthResponse._();

  @JsonSerializable(converters: convertors)
  const factory LecturerAuthResponse({
    /// Access Token
    @JsonKey(name: 'access_token') required String accessToken,

    /// Expires In
    @JsonKey(name: 'expires_in') required int expiresIn,

    /// Refresh Token
    @JsonKey(name: 'refresh_token') required String refreshToken,

    /// Refresh Expires In
    @JsonKey(name: 'refresh_expires_in') required int refreshExpiresIn,

    /// User Id
    @JsonKey(name: 'user_id') required int userId,
    @Default(UserRole.value1)
    @JsonKey(name: 'user_role')
    required UserRole userRole,
  }) = _LecturerAuthResponse;

  factory LecturerAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$LecturerAuthResponseFromJson(json);
}
