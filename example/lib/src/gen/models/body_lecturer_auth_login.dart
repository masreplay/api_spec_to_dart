import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'body_lecturer_auth_login.freezed.dart';
part 'body_lecturer_auth_login.g.dart';

///Body_lecturer_auth-login

@freezed
class BodyLecturerAuthLogin with _$BodyLecturerAuthLogin {
  const BodyLecturerAuthLogin._();

  @JsonSerializable(converters: convertors)
  const factory BodyLecturerAuthLogin({
    /// Username
    @JsonKey(name: 'username') required String username,

    /// Password
    @JsonKey(name: 'password') required String password,
  }) = _BodyLecturerAuthLogin;

  factory BodyLecturerAuthLogin.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BodyLecturerAuthLoginFromJson(
        json,
      );
}
