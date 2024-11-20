import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'body_student_ekyc_upload_face_data.freezed.dart';
part 'body_student_ekyc_upload_face_data.g.dart';

@freezed
class BodyStudentEkycUploadFaceData with _$BodyStudentEkycUploadFaceData {
  const BodyStudentEkycUploadFaceData._();

  @JsonSerializable(converters: convertors)
  const factory BodyStudentEkycUploadFaceData({
    @JsonKey(name: 'data')

    /// Data
    required String data,
    @JsonKey(name: 'file')

    /// File
    required File file,
    @JsonKey(name: 'file_raw')

    /// File Raw
    required File fileRaw,
  }) = _BodyStudentEkycUploadFaceData;

  factory BodyStudentEkycUploadFaceData.fromJson(Map<String, dynamic> json) =>
      _$BodyStudentEkycUploadFaceDataFromJson(json);
}
