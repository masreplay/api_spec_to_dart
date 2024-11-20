import 'package:freezed_annotation/freezed_annotation.dart';

part 'citizenship_type_enum.freezed.dart';
part 'citizenship_type_enum.g.dart';

@freezed
class CitizenshipTypeEnum with _$CitizenshipTypeEnum {
  const factory CitizenshipTypeEnum() = _CitizenshipTypeEnum;

  factory CitizenshipTypeEnum.fromJson(Map<String, dynamic> json) =>
      _$CitizenshipTypeEnumFromJson(json);
}
