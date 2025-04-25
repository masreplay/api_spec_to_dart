import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:example/src/gen/models/models.dart';
part 'user_level.g.dart';

@JsonEnum(valueField: "value", alwaysCreate: true)
enum UserLevel {
  valuebasic('basic'),
  valuepremium('premium'),
  valueadmin('admin');

  const UserLevel(this.value);

  final String value;

  String toJson() => _$UserLevelEnumMap[this]!;
}
