import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_level.g.dart';

/// UserLevel
@JsonEnum(valueField: 'value', alwaysCreate: true)
enum UserLevel {
  basic('basic'),
  premium('premium'),
  admin('admin');

  const UserLevel(this.value);

  factory UserLevel.fromJson(String value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
  final String value;

  String toJson() => _$UserLevelEnumMap[this]!;
}
