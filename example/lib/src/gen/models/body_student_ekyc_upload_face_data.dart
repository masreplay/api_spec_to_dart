import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'body_student_ekyc_upload_face_data.freezed.dart';
part 'body_student_ekyc_upload_face_data.g.dart';

///Body_student_ekyc-upload_face_data

@freezed
class BodyStudentEkycUploadFaceData with _$BodyStudentEkycUploadFaceData {
  const BodyStudentEkycUploadFaceData._();

  @JsonSerializable(converters: convertors)
  const factory BodyStudentEkycUploadFaceData({
    /// Data
    @JsonKey(name: 'data') required String data,

    /// File
    @JsonKey(name: 'file') required File file,

    /// File Raw
    @JsonKey(name: 'file_raw') required File fileRaw,
  }) = _BodyStudentEkycUploadFaceData;

  factory BodyStudentEkycUploadFaceData.fromJson(Map<String, dynamic> json) =>
      _$BodyStudentEkycUploadFaceDataFromJson(json);
}
