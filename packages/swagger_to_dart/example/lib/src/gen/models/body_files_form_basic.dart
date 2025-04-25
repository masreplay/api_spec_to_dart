import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'body_files_form_basic.freezed.dart';
part 'body_files_form_basic.g.dart';

/// Body_files-form_basic
@freezed
abstract class BodyFilesFormBasic with _$BodyFilesFormBasic {
  @JsonSerializable(converters: Convertors.convertors)
  const factory BodyFilesFormBasic({
    required String username,
    required String password,
    required bool remember,
  }) = _BodyFilesFormBasic;

  factory BodyFilesFormBasic.fromJson(Map<String, dynamic> json) =>
      _$BodyFilesFormBasicFromJson(json);
}
