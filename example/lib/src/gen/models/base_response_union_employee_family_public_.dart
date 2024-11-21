import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_union_employee_family_public_.freezed.dart';
part 'base_response_union_employee_family_public_.g.dart';

///BaseResponse_Union_EmployeeFamilyPublic__NoneType__

@freezed
class BaseResponseUnionEmployeeFamilyPublic
    with _$BaseResponseUnionEmployeeFamilyPublic {
  const BaseResponseUnionEmployeeFamilyPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionEmployeeFamilyPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required EmployeeFamilyPublic? data,
  }) = _BaseResponseUnionEmployeeFamilyPublic;

  factory BaseResponseUnionEmployeeFamilyPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseUnionEmployeeFamilyPublicFromJson(json);
}
