import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';

part 'user_register.freezed.dart';
part 'user_register.g.dart';

/// UserRegister

@freezed
abstract class UserRegister with _$UserRegister {
  const UserRegister._();

  static const String emailKey = 'email';
  static const String passwordKey = 'password';
  static const String fullNameKey = 'full_name';

  @JsonSerializable(converters: convertors)
  const factory UserRegister({
    /// email
    @JsonKey(name: UserRegister.emailKey) required String email,

    /// password
    @JsonKey(name: UserRegister.passwordKey) required String password,

    /// Full Name
    @JsonKey(name: UserRegister.fullNameKey) required Stringdynamic? fullName,
  }) = _UserRegister;

  factory UserRegister.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterFromJson(json);
}
