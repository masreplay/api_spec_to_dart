import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';

part 'body_dev_upload_file.freezed.dart';
part 'body_dev_upload_file.g.dart';

///Body_dev-upload_file

@freezed
class BodyDevUploadFile with _$BodyDevUploadFile {
  const BodyDevUploadFile._();

  @JsonSerializable(converters: convertors)
  const factory BodyDevUploadFile({
    /// File
    @JsonKey(name: 'file') required File file,
  }) = _BodyDevUploadFile;

  factory BodyDevUploadFile.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BodyDevUploadFileFromJson(json);
}
