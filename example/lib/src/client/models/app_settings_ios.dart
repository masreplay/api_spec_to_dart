import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_ios.freezed.dart';
part 'app_settings_ios.g.dart';

@freezed
class AppSettingsIos with _$AppSettingsIos {
  const factory AppSettingsIos({
    @JsonKey(name: 'version') required String version,
    @JsonKey(name: 'url') required String? url,
    @JsonKey(name: 'message') required String? message,
  }) = _AppSettingsIos;

  factory AppSettingsIos.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsIosFromJson(json);
}
