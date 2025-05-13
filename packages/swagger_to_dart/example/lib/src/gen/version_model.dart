// VersionModel
// {
//     "properties": {
//         "version": {
//             "type": "string",
//             "pattern": "^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$",
//             "title": "Version"
//         }
//     },
//     "type": "object",
//     "required": [
//         "version"
//     ],
//     "title": "VersionModel"
// }

library;

import 'exports.dart';
part 'version_model.freezed.dart';
part 'version_model.g.dart'; // VersionModel

@freezed
abstract class VersionModel with _$VersionModel {
  const VersionModel._();

  const factory VersionModel({
    /// version
    @JsonKey(name: VersionModel.versionKey) required String version,
  }) = _VersionModel;

  factory VersionModel.fromJson(Map<String, dynamic> json) =>
      _$VersionModelFromJson(json);

  static const String versionKey = "version";
}
