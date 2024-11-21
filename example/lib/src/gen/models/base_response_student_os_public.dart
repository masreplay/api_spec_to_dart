import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_student_os_public.freezed.dart';
part 'base_response_student_os_public.g.dart';

///BaseResponse_StudentOSPublic_

@freezed
class BaseResponseStudentOSPublic with _$BaseResponseStudentOSPublic {
  const BaseResponseStudentOSPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseStudentOSPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required StudentOSPublic data,
  }) = _BaseResponseStudentOSPublic;

  factory BaseResponseStudentOSPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseStudentOSPublicFromJson(
        json,
      );
}
