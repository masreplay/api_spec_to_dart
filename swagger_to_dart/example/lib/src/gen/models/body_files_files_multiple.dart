import "package:freezed_annotation/freezed_annotation.dart";
import "package:dio/dio.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "body_files_files_multiple.freezed.dart";
part "body_files_files_multiple.g.dart";

/// Body_files-files_multiple
@freezed
abstract class BodyFilesFilesMultiple with _$BodyFilesFilesMultiple {
  const BodyFilesFilesMultiple._();

  static const String filesKey = "files";
  static const String notesKey = "notes";

  @JsonSerializable(converters: convertors)
  const factory BodyFilesFilesMultiple({
    /// files, List of files to upload
    @JsonKey(name: BodyFilesFilesMultiple.filesKey)
    required List<MultipartFile> files,

    /// notes, Notes about the uploads
    @JsonKey(name: BodyFilesFilesMultiple.notesKey) required String notes,
  }) = _BodyFilesFilesMultiple;

  factory BodyFilesFilesMultiple.fromJson(Map<String, dynamic> json) =>
      _$BodyFilesFilesMultipleFromJson(json);
}
