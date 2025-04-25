import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'body_files_files_multiple.freezed.dart';
part 'body_files_files_multiple.g.dart';

/// Body_files-files_multiple
@freezed
abstract class BodyFilesFilesMultiple with _$BodyFilesFilesMultiple {
  @JsonSerializable(converters: Convertors.convertors)
  const factory BodyFilesFilesMultiple({
    required List<String> files,
    required String notes,
  }) = _BodyFilesFilesMultiple;

  factory BodyFilesFilesMultiple.fromJson(Map<String, dynamic> json) =>
      _$BodyFilesFilesMultipleFromJson(json);
}
