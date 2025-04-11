import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'body_files_file_upload.freezed.dart';
part 'body_files_file_upload.g.dart';

/// Body_files-file_upload
@freezed
abstract class BodyFilesFileUpload with _$BodyFilesFileUpload {
  const BodyFilesFileUpload._();

  static const String fileKey = 'file';
  static const String descriptionKey = 'description';

  @JsonSerializable(converters: convertors)
  const factory BodyFilesFileUpload({
    /// file, File to upload
    @JsonKey(name: BodyFilesFileUpload.fileKey) required MultipartFile file,

    /// Description, File description
    @JsonKey(name: BodyFilesFileUpload.descriptionKey)
    required String? description,
  }) = _BodyFilesFileUpload;

  factory BodyFilesFileUpload.fromJson(Map<String, dynamic> json) =>
      _$BodyFilesFileUploadFromJson(json);
}
