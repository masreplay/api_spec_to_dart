import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_union_student_university_card_public_.freezed.dart';
part 'base_response_union_student_university_card_public_.g.dart';

///BaseResponse_Union_StudentUniversityCardPublic__NoneType__

@freezed
class BaseResponseUnionStudentUniversityCardPublic
    with _$BaseResponseUnionStudentUniversityCardPublic {
  const BaseResponseUnionStudentUniversityCardPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionStudentUniversityCardPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required StudentUniversityCardPublic? data,
  }) = _BaseResponseUnionStudentUniversityCardPublic;

  factory BaseResponseUnionStudentUniversityCardPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseUnionStudentUniversityCardPublicFromJson(json);
}
