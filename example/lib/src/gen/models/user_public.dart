import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';
     
    


part 'user_public.freezed.dart';
part 'user_public.g.dart';

/// UserPublic

@freezed
abstract class UserPublic with _$UserPublic {
  const UserPublic._();

  static const String emailKey = 'email';
static const String isActiveKey = 'is_active';
static const String isSuperuserKey = 'is_superuser';
static const String fullNameKey = 'full_name';
static const String idKey = 'id';

  @JsonSerializable(converters: convertors)
  const factory UserPublic({
/// email
@JsonKey(name: UserPublic.emailKey)
required String email,/// is_active
@Default(true)
@JsonKey(name: UserPublic.isActiveKey)
bool isActive,/// is_superuser
@Default(false)
@JsonKey(name: UserPublic.isSuperuserKey)
bool isSuperuser,/// Full Name
@JsonKey(name: UserPublic.fullNameKey)
required Stringdynamic? fullName,/// id
@JsonKey(name: UserPublic.idKey)
required String id,  }) = _UserPublic;

  factory UserPublic.fromJson(
    Map<String, dynamic> json,
  ) => _$UserPublicFromJson(
    json,
  );
}
