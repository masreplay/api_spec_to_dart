import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'user_role.freezed.dart';
part 'user_role.g.dart';

@freezed
class UserRole with _$UserRole {
  const UserRole._();

  @JsonSerializable(converters: convertors)
  const factory UserRole() = _UserRole;

  factory UserRole.fromJson(Map<String, dynamic> json) =>
      _$UserRoleFromJson(json);
}
