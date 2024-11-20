import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_union_student_school_info_response_none_type.freezed.dart';
part 'base_response_union_student_school_info_response_none_type.g.dart';

@freezed
class BaseResponseUnionStudentSchoolInfoResponseNoneType
    with _$BaseResponseUnionStudentSchoolInfoResponseNoneType {
  const BaseResponseUnionStudentSchoolInfoResponseNoneType._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionStudentSchoolInfoResponseNoneType({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required StudentSchoolInfoResponse? data,
  }) = _BaseResponseUnionStudentSchoolInfoResponseNoneType;

  factory BaseResponseUnionStudentSchoolInfoResponseNoneType.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseUnionStudentSchoolInfoResponseNoneTypeFromJson(json);
}
