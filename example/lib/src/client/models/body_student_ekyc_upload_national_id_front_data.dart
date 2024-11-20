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
    @JsonKey(name: 'data')

    /// Data
    required String data,
    @JsonKey(name: 'file')

    /// File
    required File file,
    @JsonKey(name: 'file_raw')

    /// File Raw
    required File fileRaw,
  }) = _BodyStudentEkycUploadNationalIdFrontData;

  factory BodyStudentEkycUploadNationalIdFrontData.fromJson(
          Map<String, dynamic> json) =>
      _$BodyStudentEkycUploadNationalIdFrontDataFromJson(json);
}
