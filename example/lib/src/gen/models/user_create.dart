import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';
     
    

part 'user_create.freezed.dart';
part 'user_create.g.dart';

/// UserCreate

@freezed
abstract class UserCreate with _$UserCreate {
  const UserCreate._();

  static const String emailKey = 'email';
static const String isActiveKey = 'is_active';
static const String isSuperuserKey = 'is_superuser';
static const String fullNameKey = 'full_name';
static const String passwordKey = 'password';

  @JsonSerializable(converters: convertors)
  const factory UserCreate({
/// email
@JsonKey(name: UserCreate.emailKey)
required String email,/// is_active
@Default(true)
@JsonKey(name: UserCreate.isActiveKey)
bool isActive,/// is_superuser
@Default(false)
@JsonKey(name: UserCreate.isSuperuserKey)
bool isSuperuser,/// Full Name
@JsonKey(name: UserCreate.fullNameKey)
required String? fullName,/// password
@JsonKey(name: UserCreate.passwordKey)
required String password,  }) = _UserCreate;

  factory UserCreate.fromJson(
    Map<String, dynamic> json,
  ) => _$UserCreateFromJson(
    json,
  );
}
