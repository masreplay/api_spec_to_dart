import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';

part 'body_student_ekyc_upload_nfc.freezed.dart';
part 'body_student_ekyc_upload_nfc.g.dart';

///Body_student_ekyc-upload_nfc

@freezed
class BodyStudentEkycUploadNfc with _$BodyStudentEkycUploadNfc {
  const BodyStudentEkycUploadNfc._();

  @JsonSerializable(converters: convertors)
  const factory BodyStudentEkycUploadNfc({
    /// Data
    @JsonKey(name: 'data') required String data,

    /// File
    @JsonKey(name: 'file') required File file,
  }) = _BodyStudentEkycUploadNfc;

  factory BodyStudentEkycUploadNfc.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BodyStudentEkycUploadNfcFromJson(
        json,
      );
}
