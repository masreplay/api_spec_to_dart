import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'body_student_ekyc_upload_passport_data.freezed.dart';
part 'body_student_ekyc_upload_passport_data.g.dart';

@freezed
class BodyStudentEkycUploadPassportData
    with _$BodyStudentEkycUploadPassportData {
  const BodyStudentEkycUploadPassportData._();

  @JsonSerializable(converters: convertors)
  const factory BodyStudentEkycUploadPassportData({
    @JsonKey(name: 'data') required String data,
    @JsonKey(name: 'file') required File file,
    @JsonKey(name: 'file_raw') required File fileRaw,
  }) = _BodyStudentEkycUploadPassportData;

  factory BodyStudentEkycUploadPassportData.fromJson(
          Map<String, dynamic> json) =>
      _$BodyStudentEkycUploadPassportDataFromJson(json);
}
