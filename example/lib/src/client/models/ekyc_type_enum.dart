import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'ekyc_type_enum.freezed.dart';
part 'ekyc_type_enum.g.dart';

@freezed
class EkycTypeEnum with _$EkycTypeEnum {
  const EkycTypeEnum._();

  @JsonSerializable(converters: convertors)
  const factory EkycTypeEnum() = _EkycTypeEnum;

  factory EkycTypeEnum.fromJson(Map<String, dynamic> json) =>
      _$EkycTypeEnumFromJson(json);
}
