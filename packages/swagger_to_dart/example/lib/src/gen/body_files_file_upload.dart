library body_files_file_upload;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'body_files_file_upload.freezed.dart';
part 'body_files_file_upload.g.dart'; // BodyFilesFileUpload

@freezed
abstract class BodyFilesFileUpload with _$BodyFilesFileUpload {
  const BodyFilesFileUpload._();

  const factory BodyFilesFileUpload(
    /// file
    @JsonKey(name: fileKey) MultipartFile file,

    /// description
    @JsonKey(name: descriptionKey) String? description,
  ) = _BodyFilesFileUpload;

  factory BodyFilesFileUpload.fromJson(Map<String, dynamic> json) =>
      _$BodyFilesFileUploadFromJson(json);

  static const String fileKey = "file";

  static const String descriptionKey = "description";
}
