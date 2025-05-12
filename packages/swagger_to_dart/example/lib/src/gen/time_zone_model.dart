library;

import 'package:freezed_annotation/freezed_annotation.dart';
part 'time_zone_model.freezed.dart';
part 'time_zone_model.g.dart'; // TimeZoneModel

@freezed
abstract class TimeZoneModel with _$TimeZoneModel {
  const TimeZoneModel._();

  const factory TimeZoneModel({
    /// timezone
    @JsonKey(name: timezoneKey) String timezone,
  }) = _TimeZoneModel;

  factory TimeZoneModel.fromJson(Map<String, dynamic> json) =>
      _$TimeZoneModelFromJson(json);

  static const String timezoneKey = "timezone";
}
