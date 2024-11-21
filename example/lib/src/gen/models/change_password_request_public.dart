import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'change_password_request_public.freezed.dart';
part 'change_password_request_public.g.dart';

///ChangePasswordRequestPublic

@freezed
class ChangePasswordRequestPublic with _$ChangePasswordRequestPublic {
  const ChangePasswordRequestPublic._();

  @JsonSerializable(converters: convertors)
  const factory ChangePasswordRequestPublic({
    /// Old Password
    @JsonKey(name: 'old_password') required String oldPassword,

    /// New Password
    @JsonKey(name: 'new_password') required String newPassword,
  }) = _ChangePasswordRequestPublic;

  factory ChangePasswordRequestPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ChangePasswordRequestPublicFromJson(json);
}
