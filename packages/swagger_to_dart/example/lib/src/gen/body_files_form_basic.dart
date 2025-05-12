library;

import 'package:freezed_annotation/freezed_annotation.dart';
part 'body_files_form_basic.freezed.dart';
part 'body_files_form_basic.g.dart'; // BodyFilesFormBasic

@freezed
abstract class BodyFilesFormBasic with _$BodyFilesFormBasic {
  const BodyFilesFormBasic._();

  const factory BodyFilesFormBasic({
    /// username
    @JsonKey(name: usernameKey) String username,

    /// password
    @JsonKey(name: passwordKey) String password,

    /// remember
    @Default(false) @JsonKey(name: rememberKey) bool remember,
  }) = _BodyFilesFormBasic;

  factory BodyFilesFormBasic.fromJson(Map<String, dynamic> json) =>
      _$BodyFilesFormBasicFromJson(json);

  static const String usernameKey = "username";

  static const String passwordKey = "password";

  static const String rememberKey = "remember";
}
