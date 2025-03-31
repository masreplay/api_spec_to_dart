import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';

part 'new_password.freezed.dart';
part 'new_password.g.dart';

/// NewPassword

@freezed
abstract class NewPassword with _$NewPassword {
  const NewPassword._();

  static const String tokenKey = 'token';
  static const String newPasswordKey = 'new_password';

  @JsonSerializable(converters: convertors)
  const factory NewPassword({
    /// token
    @JsonKey(name: NewPassword.tokenKey) required String token,

    /// new_password
    @JsonKey(name: NewPassword.newPasswordKey) required String newPassword,
  }) = _NewPassword;

  factory NewPassword.fromJson(Map<String, dynamic> json) =>
      _$NewPasswordFromJson(json);
}
