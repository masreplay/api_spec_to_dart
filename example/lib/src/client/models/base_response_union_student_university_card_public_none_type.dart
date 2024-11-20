import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_union_student_university_card_public_none_type.freezed.dart';
part 'base_response_union_student_university_card_public_none_type.g.dart';

@freezed
class BaseResponseUnionStudentUniversityCardPublicNoneType
    with _$BaseResponseUnionStudentUniversityCardPublicNoneType {
  const BaseResponseUnionStudentUniversityCardPublicNoneType._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionStudentUniversityCardPublicNoneType({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required StudentUniversityCardPublic? data,
  }) = _BaseResponseUnionStudentUniversityCardPublicNoneType;

  factory BaseResponseUnionStudentUniversityCardPublicNoneType.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseUnionStudentUniversityCardPublicNoneTypeFromJson(json);
}
