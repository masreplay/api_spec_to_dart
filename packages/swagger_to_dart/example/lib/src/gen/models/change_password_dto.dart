/// ChangePasswordDto
/// {
///     "properties": {
///         "old_password": {
///             "type": "string"
///         },
///         "new_password": {
///             "type": "string"
///         }
///     },
///     "type": "object",
///     "required": [
///         "new_password",
///         "old_password"
///     ],
///     "additionalProperties": false
/// }
library change_password_dto;

import 'exports.dart';
part 'change_password_dto.freezed.dart';
part 'change_password_dto.g.dart'; // ChangePasswordDto

@freezed
abstract class ChangePasswordDto with _$ChangePasswordDto {
  const ChangePasswordDto._();

  @jsonSerializable
  const factory ChangePasswordDto({
    /// oldPassword
    @JsonKey(name: ChangePasswordDto.oldPasswordKey_)
    required String oldPassword,

    /// newPassword
    @JsonKey(name: ChangePasswordDto.newPasswordKey_)
    required String newPassword,
  }) = _ChangePasswordDto;

  factory ChangePasswordDto.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordDtoFromJson(json);

  static const String oldPasswordKey_ = r'old_password';

  static const String newPasswordKey_ = r'new_password';
}
