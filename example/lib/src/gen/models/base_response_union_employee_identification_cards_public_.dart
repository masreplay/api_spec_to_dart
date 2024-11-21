import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_union_employee_identification_cards_public_.freezed.dart';
part 'base_response_union_employee_identification_cards_public_.g.dart';

@freezed
class BaseResponseUnionEmployeeIdentificationCardsPublic
    with _$BaseResponseUnionEmployeeIdentificationCardsPublic {
  const BaseResponseUnionEmployeeIdentificationCardsPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionEmployeeIdentificationCardsPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required EmployeeIdentificationCardsPublic? data,
  }) = _BaseResponseUnionEmployeeIdentificationCardsPublic;

  factory BaseResponseUnionEmployeeIdentificationCardsPublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseUnionEmployeeIdentificationCardsPublicFromJson(json);
}
