import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'body_student_ekyc_upload_nfc.freezed.dart';
part 'body_student_ekyc_upload_nfc.g.dart';

@freezed
class BodyStudentEkycUploadNfc with _$BodyStudentEkycUploadNfc {
  const BodyStudentEkycUploadNfc._();

  @JsonSerializable(converters: convertors)
  const factory BodyStudentEkycUploadNfc({
    @JsonKey(name: 'data')

    /// Data
    required String data,
    @JsonKey(name: 'file')

    /// File
    required File file,
  }) = _BodyStudentEkycUploadNfc;

  factory BodyStudentEkycUploadNfc.fromJson(Map<String, dynamic> json) =>
      _$BodyStudentEkycUploadNfcFromJson(json);
}
