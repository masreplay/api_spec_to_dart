import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'body_lecturer_auth_swagger_login.freezed.dart';
part 'body_lecturer_auth_swagger_login.g.dart';

///Body_lecturer_auth-swagger_login

@freezed
class BodyLecturerAuthSwaggerLogin with _$BodyLecturerAuthSwaggerLogin {
  const BodyLecturerAuthSwaggerLogin._();

  @JsonSerializable(converters: convertors)
  const factory BodyLecturerAuthSwaggerLogin({
    /// Username
    @JsonKey(name: 'username') required String username,

    /// Password
    @JsonKey(name: 'password') required String password,
  }) = _BodyLecturerAuthSwaggerLogin;

  factory BodyLecturerAuthSwaggerLogin.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BodyLecturerAuthSwaggerLoginFromJson(json);
}
