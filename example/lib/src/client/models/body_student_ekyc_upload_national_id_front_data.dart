import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'body_student_ekyc_upload_national_id_front_data.freezed.dart';
part 'body_student_ekyc_upload_national_id_front_data.g.dart';

@freezed
class BodyStudentEkycUploadNationalIdFrontData
    with _$BodyStudentEkycUploadNationalIdFrontData {
  const BodyStudentEkycUploadNationalIdFrontData._();

  @JsonSerializable(converters: convertors)
  const factory BodyStudentEkycUploadNationalIdFrontData({
    /// Data
    @JsonKey(name: 'data') required String data,

    /// File
    @JsonKey(name: 'file') required File file,

    /// File Raw
    @JsonKey(name: 'file_raw') required File fileRaw,
  }) = _BodyStudentEkycUploadNationalIdFrontData;

  factory BodyStudentEkycUploadNationalIdFrontData.fromJson(
          Map<String, dynamic> json) =>
      _$BodyStudentEkycUploadNationalIdFrontDataFromJson(json);
}
