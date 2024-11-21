import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_union_employee_identification_cards_public_none_type.freezed.dart';
part 'base_response_union_employee_identification_cards_public_none_type.g.dart';

@freezed
class BaseResponseUnionEmployeeIdentificationCardsPublicNoneType
    with _$BaseResponseUnionEmployeeIdentificationCardsPublicNoneType {
  const BaseResponseUnionEmployeeIdentificationCardsPublicNoneType._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionEmployeeIdentificationCardsPublicNoneType({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required EmployeeIdentificationCardsPublic? data,
  }) = _BaseResponseUnionEmployeeIdentificationCardsPublicNoneType;

  factory BaseResponseUnionEmployeeIdentificationCardsPublicNoneType.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseUnionEmployeeIdentificationCardsPublicNoneTypeFromJson(
          json);
}
