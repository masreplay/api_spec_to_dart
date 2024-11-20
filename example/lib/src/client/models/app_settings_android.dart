import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'app_settings_android.freezed.dart';
part 'app_settings_android.g.dart';

@freezed
class AppSettingsAndroid with _$AppSettingsAndroid {
  const AppSettingsAndroid._();

  @JsonSerializable(converters: convertors)
  const factory AppSettingsAndroid({
    @JsonKey(name: 'version') required String version,
    @JsonKey(name: 'url') required String? url,
    @JsonKey(name: 'message') required String? message,
  }) = _AppSettingsAndroid;

  factory AppSettingsAndroid.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsAndroidFromJson(json);
}
