import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'body_student_ekyc_upload_national_id_back_data.freezed.dart';
part 'body_student_ekyc_upload_national_id_back_data.g.dart';

@freezed
class BodyStudentEkycUploadNationalIdBackData
    with _$BodyStudentEkycUploadNationalIdBackData {
  const BodyStudentEkycUploadNationalIdBackData._();

  @JsonSerializable(converters: convertors)
  const factory BodyStudentEkycUploadNationalIdBackData({
    @JsonKey(name: 'data')

    /// Data
    required String data,
    @JsonKey(name: 'file')

    /// File
    required File file,
    @JsonKey(name: 'file_raw')

    /// File Raw
    required File fileRaw,
  }) = _BodyStudentEkycUploadNationalIdBackData;

  factory BodyStudentEkycUploadNationalIdBackData.fromJson(
          Map<String, dynamic> json) =>
      _$BodyStudentEkycUploadNationalIdBackDataFromJson(json);
}
