import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'body_student_ekyc_upload_eye_data.freezed.dart';
part 'body_student_ekyc_upload_eye_data.g.dart';

@freezed
class BodyStudentEkycUploadEyeData with _$BodyStudentEkycUploadEyeData {
  const BodyStudentEkycUploadEyeData._();

  @JsonSerializable(converters: convertors)
  const factory BodyStudentEkycUploadEyeData({
    /// File Raw
    @JsonKey(name: 'file_raw') required File fileRaw,
  }) = _BodyStudentEkycUploadEyeData;

  factory BodyStudentEkycUploadEyeData.fromJson(Map<String, dynamic> json) =>
      _$BodyStudentEkycUploadEyeDataFromJson(json);
}
