/// Body_files-file_upload
/// {
///     "properties": {
///         "file": {
///             "type": "string",
///             "format": "binary",
///             "description": "File to upload",
///             "title": "File"
///         },
///         "description": {
///             "anyOf": [
///                 {
///                     "type": "string"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "description": "File description",
///             "title": "Description"
///         }
///     },
///     "type": "object",
///     "required": [
///         "file"
///     ],
///     "title": "Body_files-file_upload"
/// }
library body_files_file_upload;

import 'exports.dart';
part 'body_files_file_upload.freezed.dart';
part 'body_files_file_upload.g.dart'; // BodyFilesFileUpload

@freezed
abstract class BodyFilesFileUpload with _$BodyFilesFileUpload {
  const BodyFilesFileUpload._();

  @generationJsonSerializable
  const factory BodyFilesFileUpload({
    /// file
    @JsonKey(name: BodyFilesFileUpload.fileKey) required MultipartFile file,

    /// description
    @JsonKey(name: BodyFilesFileUpload.descriptionKey)
    required String? description,
  }) = _BodyFilesFileUpload;

  factory BodyFilesFileUpload.fromJson(Map<String, dynamic> json) =>
      _$BodyFilesFileUploadFromJson(json);

  static const String fileKey = "file";

  static const String descriptionKey = "description";
}
