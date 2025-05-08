library body_files_file_upload.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'body_files_file_upload.freezed.dart';
part 'body_files_file_upload.g.dart'; // BodyFilesFileUpload

@freezed
abstract class BodyFilesFileUpload with _$BodyFilesFileUpload {
  const BodyFilesFileUpload._();

  const factory BodyFilesFileUpload() = _BodyFilesFileUpload;

  factory BodyFilesFileUpload.fromJson(Map<String, dynamic> json) =>
      _$BodyFilesFileUploadFromJson(json);
}
