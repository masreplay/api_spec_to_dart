import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';

part 'user_update.freezed.dart';
part 'user_update.g.dart';

/// UserUpdate

@freezed
abstract class UserUpdate with _$UserUpdate {
  const UserUpdate._();

  static const String emailKey = 'email';
  static const String isActiveKey = 'is_active';
  static const String isSuperuserKey = 'is_superuser';
  static const String fullNameKey = 'full_name';
  static const String passwordKey = 'password';

  @JsonSerializable(converters: convertors)
  const factory UserUpdate({
    /// Email
    @JsonKey(name: UserUpdate.emailKey) required Stringdynamic? email,

    /// is_active
    @Default(true) @JsonKey(name: UserUpdate.isActiveKey) bool isActive,

    /// is_superuser
    @Default(false) @JsonKey(name: UserUpdate.isSuperuserKey) bool isSuperuser,

    /// Full Name
    @JsonKey(name: UserUpdate.fullNameKey) required Stringdynamic? fullName,

    /// Password
    @JsonKey(name: UserUpdate.passwordKey) required Stringdynamic? password,
  }) = _UserUpdate;

  factory UserUpdate.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateFromJson(json);
}
