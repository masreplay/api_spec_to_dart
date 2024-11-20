import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'body_lecturer_auth_login.freezed.dart';
part 'body_lecturer_auth_login.g.dart';

@freezed
class BodyLecturerAuthLogin with _$BodyLecturerAuthLogin {
  const BodyLecturerAuthLogin._();

  @JsonSerializable(converters: convertors)
  const factory BodyLecturerAuthLogin({
    @JsonKey(name: 'username')

    /// Username
    required String username,
    @JsonKey(name: 'password')

    /// Password
    required String password,
  }) = _BodyLecturerAuthLogin;

  factory BodyLecturerAuthLogin.fromJson(Map<String, dynamic> json) =>
      _$BodyLecturerAuthLoginFromJson(json);
}
