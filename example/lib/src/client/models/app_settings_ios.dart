import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'app_settings_ios.freezed.dart';
part 'app_settings_ios.g.dart';

@freezed
class AppSettingsIos with _$AppSettingsIos {
  const AppSettingsIos._();

  @JsonSerializable(converters: convertors)
  const factory AppSettingsIos({
    @JsonKey(name: 'version')

    /// Version
    required String version,
    @JsonKey(name: 'url')

    /// Url
    required String? url,
    @JsonKey(name: 'message')

    /// Message
    required String? message,
  }) = _AppSettingsIos;

  factory AppSettingsIos.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsIosFromJson(json);
}
