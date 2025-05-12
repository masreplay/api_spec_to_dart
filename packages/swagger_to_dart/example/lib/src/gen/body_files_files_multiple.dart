library body_files_files_multiple;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'body_files_files_multiple.freezed.dart';
part 'body_files_files_multiple.g.dart'; // BodyFilesFilesMultiple

@freezed
abstract class BodyFilesFilesMultiple with _$BodyFilesFilesMultiple {
  const BodyFilesFilesMultiple._();

  const factory BodyFilesFilesMultiple(
    /// files
    @JsonKey(name: filesKey) List<MultipartFile> files,

    /// notes
    @JsonKey(name: notesKey) String notes,
  ) = _BodyFilesFilesMultiple;

  factory BodyFilesFilesMultiple.fromJson(Map<String, dynamic> json) =>
      _$BodyFilesFilesMultipleFromJson(json);

  static const String filesKey = "files";

  static const String notesKey = "notes";
}
