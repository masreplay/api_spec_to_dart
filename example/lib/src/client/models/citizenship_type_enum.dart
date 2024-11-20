import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'citizenship_type_enum.freezed.dart';
part 'citizenship_type_enum.g.dart';

@freezed
class CitizenshipTypeEnum with _$CitizenshipTypeEnum {
  const CitizenshipTypeEnum._();

  @JsonSerializable(converters: convertors)
  const factory CitizenshipTypeEnum() = _CitizenshipTypeEnum;

  factory CitizenshipTypeEnum.fromJson(Map<String, dynamic> json) =>
      _$CitizenshipTypeEnumFromJson(json);
}
