library body_files_form_basic.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'body_files_form_basic.freezed.dart';
part 'body_files_form_basic.g.dart'; // BodyFilesFormBasic

@freezed
abstract class BodyFilesFormBasic with _$BodyFilesFormBasic {
  const BodyFilesFormBasic._();

  const factory BodyFilesFormBasic() = _BodyFilesFormBasic;

  factory BodyFilesFormBasic.fromJson(Map<String, dynamic> json) =>
      _$BodyFilesFormBasicFromJson(json);
}
