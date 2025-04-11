import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'body_files_form_basic.freezed.dart';
part 'body_files_form_basic.g.dart';

/// Body_files-form_basic
@freezed
abstract class BodyFilesFormBasic with _$BodyFilesFormBasic {
  const BodyFilesFormBasic._();

  static const String usernameKey = 'username';
  static const String passwordKey = 'password';
  static const String rememberKey = 'remember';

  @JsonSerializable(converters: convertors)
  const factory BodyFilesFormBasic({
    /// username, Username
    @JsonKey(name: BodyFilesFormBasic.usernameKey) required String username,

    /// password, Password
    @JsonKey(name: BodyFilesFormBasic.passwordKey) required String password,

    /// remember, Remember login
    @Default(false)
    @JsonKey(name: BodyFilesFormBasic.rememberKey)
    bool remember,
  }) = _BodyFilesFormBasic;

  factory BodyFilesFormBasic.fromJson(Map<String, dynamic> json) =>
      _$BodyFilesFormBasicFromJson(json);
}
