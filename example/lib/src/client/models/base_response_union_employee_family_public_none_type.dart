import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'base_response_union_employee_family_public_none_type.freezed.dart';
part 'base_response_union_employee_family_public_none_type.g.dart';

@freezed
class BaseResponseUnionEmployeeFamilyPublicNoneType
    with _$BaseResponseUnionEmployeeFamilyPublicNoneType {
  const factory BaseResponseUnionEmployeeFamilyPublicNoneType({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required EmployeeFamilyPublic? data,
  }) = _BaseResponseUnionEmployeeFamilyPublicNoneType;

  factory BaseResponseUnionEmployeeFamilyPublicNoneType.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseUnionEmployeeFamilyPublicNoneTypeFromJson(json);
}
