import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_role.g.dart';

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum UserRole {
  value0(0),
  value1(1),
  ;

  const UserRole(this.value);

  factory UserRole.fromJson(int value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
  final int value;

  int toJson() => _$UserRoleEnumMap[this]!;
}
