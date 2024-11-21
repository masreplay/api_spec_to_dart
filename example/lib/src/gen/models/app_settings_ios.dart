import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'app_settings_ios.freezed.dart';
part 'app_settings_ios.g.dart';

///AppSettingsIos

@freezed
class AppSettingsIos with _$AppSettingsIos {
  const AppSettingsIos._();

  @JsonSerializable(converters: convertors)
  const factory AppSettingsIos({
    /// Version
    @JsonKey(name: 'version') required String version,

    /// Url
    @JsonKey(name: 'url') required String? url,

    /// Message
    @JsonKey(name: 'message') required String? message,
  }) = _AppSettingsIos;

  factory AppSettingsIos.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AppSettingsIosFromJson(json);
}
