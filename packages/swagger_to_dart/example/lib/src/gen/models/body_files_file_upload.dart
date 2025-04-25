import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'body_files_file_upload.freezed.dart';
part 'body_files_file_upload.g.dart';

/// Body_files-file_upload
@freezed
abstract class BodyFilesFileUpload with _$BodyFilesFileUpload {
  @JsonSerializable(converters: Convertors.convertors)
  const factory BodyFilesFileUpload({
    required String file,
    required String? description,
  }) = _BodyFilesFileUpload;

  factory BodyFilesFileUpload.fromJson(Map<String, dynamic> json) =>
      _$BodyFilesFileUploadFromJson(json);
}
