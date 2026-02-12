/// Body_files-files_multiple
/// {
///     "properties": {
///         "files": {
///             "type": "array",
///             "items": {
///                 "type": "string",
///                 "format": "binary"
///             },
///             "description": "list of files to upload",
///             "title": "Files"
///         },
///         "notes": {
///             "type": "string",
///             "description": "Notes about the uploads",
///             "title": "Notes"
///         }
///     },
///     "type": "object",
///     "required": [
///         "files"
///     ],
///     "title": "Body_files-files_multiple"
/// }
library body_files_files_multiple;

import 'exports.dart';
part 'body_files_files_multiple.freezed.dart';
part 'body_files_files_multiple.g.dart'; // BodyFilesFilesMultiple

@freezed
abstract class BodyFilesFilesMultiple with _$BodyFilesFilesMultiple {
  const BodyFilesFilesMultiple._();

  @jsonSerializable
  const factory BodyFilesFilesMultiple({
    /// files
    @JsonKey(name: BodyFilesFilesMultiple.filesKey_)
    required List<MultipartFile> files,

    /// notes
    @JsonKey(name: BodyFilesFilesMultiple.notesKey_) String? notes,
  }) = _BodyFilesFilesMultiple;

  factory BodyFilesFilesMultiple.fromJson(Map<String, dynamic> json) =>
      _$BodyFilesFilesMultipleFromJson(json);

  static const String filesKey_ = r'files';

  static const String notesKey_ = r'notes';
}
