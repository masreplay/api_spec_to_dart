import 'package:freezed_annotation/freezed_annotation.dart';

part 'blood_group_enum.freezed.dart';
part 'blood_group_enum.g.dart';

@freezed
class BloodGroupEnum with _$BloodGroupEnum {
  const factory BloodGroupEnum() = _BloodGroupEnum;

  factory BloodGroupEnum.fromJson(Map<String, dynamic> json) =>
      _$BloodGroupEnumFromJson(json);
}
