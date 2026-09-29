/// Body_files-files_multiple
///
/// ```json
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
/// ```
library;

import 'exports.dart';
part 'body_files_files_multiple.freezed.dart';
part 'body_files_files_multiple.g.dart';

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

  static const String filesKey_ = 'files';

  static const String notesKey_ = 'notes';
}
