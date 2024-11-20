import 'package:freezed_annotation/freezed_annotation.dart';

part 'ekyc_status_enum.freezed.dart';
part 'ekyc_status_enum.g.dart';

@freezed
class EkycStatusEnum with _$EkycStatusEnum {
  const factory EkycStatusEnum() = _EkycStatusEnum;

  factory EkycStatusEnum.fromJson(Map<String, dynamic> json) =>
      _$EkycStatusEnumFromJson(json);
}
