import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';

part 'body_student_ekyc_upload_passport_data.freezed.dart';
part 'body_student_ekyc_upload_passport_data.g.dart';

///Body_student_ekyc-upload_passport_data

@freezed
class BodyStudentEkycUploadPassportData
    with _$BodyStudentEkycUploadPassportData {
  const BodyStudentEkycUploadPassportData._();

  @JsonSerializable(converters: convertors)
  const factory BodyStudentEkycUploadPassportData({
    /// Data
    @JsonKey(name: 'data') required String data,

    /// File
    @JsonKey(name: 'file') required File file,

    /// File Raw
    @JsonKey(name: 'file_raw') required File fileRaw,
  }) = _BodyStudentEkycUploadPassportData;

  factory BodyStudentEkycUploadPassportData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BodyStudentEkycUploadPassportDataFromJson(
        json,
      );
}
