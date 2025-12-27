/// Body_files-form_basic
/// {
///     "properties": {
///         "username": {
///             "type": "string",
///             "description": "Username",
///             "title": "Username"
///         },
///         "password": {
///             "type": "string",
///             "description": "Password",
///             "title": "Password"
///         },
///         "remember": {
///             "type": "boolean",
///             "description": "Remember login",
///             "default": false,
///             "title": "Remember"
///         }
///     },
///     "type": "object",
///     "required": [
///         "username",
///         "password"
///     ],
///     "title": "Body_files-form_basic"
/// }
library body_files_form_basic;

import 'exports.dart';
part 'body_files_form_basic.freezed.dart';
part 'body_files_form_basic.g.dart'; // BodyFilesFormBasic

@freezed
abstract class BodyFilesFormBasic with _$BodyFilesFormBasic {
  const BodyFilesFormBasic._();

  @jsonSerializable
  const factory BodyFilesFormBasic({
    /// username
    @JsonKey(name: BodyFilesFormBasic.usernameKey_) required String username,

    /// password
    @JsonKey(name: BodyFilesFormBasic.passwordKey_) required String password,

    /// remember
    @Default(false)
    @JsonKey(name: BodyFilesFormBasic.rememberKey_)
    bool remember,
  }) = _BodyFilesFormBasic;

  factory BodyFilesFormBasic.fromJson(Map<String, dynamic> json) =>
      _$BodyFilesFormBasicFromJson(json);

  static const String usernameKey_ = r'username';

  static const String passwordKey_ = r'password';

  static const String rememberKey_ = r'remember';
}
