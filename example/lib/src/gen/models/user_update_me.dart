import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';
     
    


part 'user_update_me.freezed.dart';
part 'user_update_me.g.dart';

/// UserUpdateMe

@freezed
abstract class UserUpdateMe with _$UserUpdateMe {
  const UserUpdateMe._();

  static const String fullNameKey = 'full_name';
static const String emailKey = 'email';

  @JsonSerializable(converters: convertors)
  const factory UserUpdateMe({
/// Full Name
@JsonKey(name: UserUpdateMe.fullNameKey)
required Stringdynamic? fullName,/// Email
@JsonKey(name: UserUpdateMe.emailKey)
required Stringdynamic? email,  }) = _UserUpdateMe;

  factory UserUpdateMe.fromJson(
    Map<String, dynamic> json,
  ) => _$UserUpdateMeFromJson(
    json,
  );
}
