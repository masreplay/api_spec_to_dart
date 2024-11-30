import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'app_settings_update.freezed.dart';
part 'app_settings_update.g.dart';

///AppSettingsUpdate

@freezed
class AppSettingsUpdate with _$AppSettingsUpdate {
  const AppSettingsUpdate._();

  @JsonSerializable(converters: convertors)
  const factory AppSettingsUpdate({
    /// Is Force Update
    @JsonKey(name: 'is_force_update') required bool isForceUpdate,
    @JsonKey(name: 'android') required AppSettingsAndroid android,
    @JsonKey(name: 'ios') required AppSettingsIos ios,
  }) = _AppSettingsUpdate;

  factory AppSettingsUpdate.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AppSettingsUpdateFromJson(
        json,
      );
}
