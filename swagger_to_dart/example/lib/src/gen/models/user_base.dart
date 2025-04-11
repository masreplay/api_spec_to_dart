import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'user_base.freezed.dart';
part 'user_base.g.dart';

/// UserBase
@freezed
abstract class UserBase with _$UserBase {
  const UserBase._();

  static const String usernameKey = 'username';
  static const String emailKey = 'email';
  static const String fullNameKey = 'full_name';

  @JsonSerializable(converters: convertors)
  const factory UserBase({
    /// username, Username between 3-50 characters, alphanumeric with _ and -
    @JsonKey(name: UserBase.usernameKey) required String username,

    /// email, Valid email address
    @JsonKey(name: UserBase.emailKey) required String email,

    /// Full Name, User's full name
    @JsonKey(name: UserBase.fullNameKey) required String? fullName,
  }) = _UserBase;

  factory UserBase.fromJson(Map<String, dynamic> json) =>
      _$UserBaseFromJson(json);
}
