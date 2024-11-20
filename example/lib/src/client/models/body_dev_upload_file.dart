import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'body_dev_upload_file.freezed.dart';
part 'body_dev_upload_file.g.dart';

@freezed
class BodyDevUploadFile with _$BodyDevUploadFile {
  const BodyDevUploadFile._();

  @JsonSerializable(converters: convertors)
  const factory BodyDevUploadFile({
    @JsonKey(name: 'file') required File file,
  }) = _BodyDevUploadFile;

  factory BodyDevUploadFile.fromJson(Map<String, dynamic> json) =>
      _$BodyDevUploadFileFromJson(json);
}
