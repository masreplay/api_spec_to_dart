library body_files_files_multiple.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'body_files_files_multiple.freezed.dart';
part 'body_files_files_multiple.g.dart'; // BodyFilesFilesMultiple

@freezed
abstract class BodyFilesFilesMultiple with _$BodyFilesFilesMultiple {
  const BodyFilesFilesMultiple._();

  const factory BodyFilesFilesMultiple() = _BodyFilesFilesMultiple;

  factory BodyFilesFilesMultiple.fromJson(Map<String, dynamic> json) =>
      _$BodyFilesFilesMultipleFromJson(json);
}
