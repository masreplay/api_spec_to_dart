import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';
     
    


part 'private_user_create.freezed.dart';
part 'private_user_create.g.dart';

/// PrivateUserCreate

@freezed
abstract class PrivateUserCreate with _$PrivateUserCreate {
  const PrivateUserCreate._();

  static const String emailKey = 'email';
static const String passwordKey = 'password';
static const String fullNameKey = 'full_name';
static const String isVerifiedKey = 'is_verified';

  @JsonSerializable(converters: convertors)
  const factory PrivateUserCreate({
/// email
@JsonKey(name: PrivateUserCreate.emailKey)
required String email,/// password
@JsonKey(name: PrivateUserCreate.passwordKey)
required String password,/// full_name
@JsonKey(name: PrivateUserCreate.fullNameKey)
required String fullName,/// is_verified
@Default(false)
@JsonKey(name: PrivateUserCreate.isVerifiedKey)
bool isVerified,  }) = _PrivateUserCreate;

  factory PrivateUserCreate.fromJson(
    Map<String, dynamic> json,
  ) => _$PrivateUserCreateFromJson(
    json,
  );
}
