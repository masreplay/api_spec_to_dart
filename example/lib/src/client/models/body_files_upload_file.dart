import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'body_files_upload_file.freezed.dart';
part 'body_files_upload_file.g.dart';

@freezed
class BodyFilesUploadFile with _$BodyFilesUploadFile {
  const factory BodyFilesUploadFile({
    @JsonKey(name: 'file') required File file,
    @JsonKey(name: 'entity_id') required int? entityId,
    @JsonKey(name: 'collection') required FileCollectionEnum collection,
  }) = _BodyFilesUploadFile;

  factory BodyFilesUploadFile.fromJson(Map<String, dynamic> json) =>
      _$BodyFilesUploadFileFromJson(json);
}
