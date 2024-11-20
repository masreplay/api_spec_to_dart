import 'package:freezed_annotation/freezed_annotation.dart';

part 'gender_enum.freezed.dart';
part 'gender_enum.g.dart';

@freezed
class GenderEnum with _$GenderEnum {
  const factory GenderEnum() = _GenderEnum;

  factory GenderEnum.fromJson(Map<String, dynamic> json) =>
      _$GenderEnumFromJson(json);
}
