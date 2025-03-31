import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';
     
    


part 'update_password.freezed.dart';
part 'update_password.g.dart';

/// UpdatePassword

@freezed
abstract class UpdatePassword with _$UpdatePassword {
  const UpdatePassword._();

  static const String currentPasswordKey = 'current_password';
static const String newPasswordKey = 'new_password';

  @JsonSerializable(converters: convertors)
  const factory UpdatePassword({
/// current_password
@JsonKey(name: UpdatePassword.currentPasswordKey)
required String currentPassword,/// new_password
@JsonKey(name: UpdatePassword.newPasswordKey)
required String newPassword,  }) = _UpdatePassword;

  factory UpdatePassword.fromJson(
    Map<String, dynamic> json,
  ) => _$UpdatePasswordFromJson(
    json,
  );
}
