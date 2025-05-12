library;

import 'package:freezed_annotation/freezed_annotation.dart';
part 'version_model.freezed.dart';
part 'version_model.g.dart'; // VersionModel

@freezed
abstract class VersionModel with _$VersionModel {
  const VersionModel._();

  const factory VersionModel({
    /// version
    @JsonKey(name: versionKey) String version,
  }) = _VersionModel;

  factory VersionModel.fromJson(Map<String, dynamic> json) =>
      _$VersionModelFromJson(json);

  static const String versionKey = "version";
}
