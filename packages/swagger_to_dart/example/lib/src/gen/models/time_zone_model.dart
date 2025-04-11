import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "time_zone_model.freezed.dart";
part "time_zone_model.g.dart";

/// TimeZoneModel
@freezed
abstract class TimeZoneModel with _$TimeZoneModel {
  const TimeZoneModel._();

  static const String timezoneKey = "timezone";

  @JsonSerializable(converters: convertors)
  const factory TimeZoneModel({
    /// timezone
    @JsonKey(name: TimeZoneModel.timezoneKey) required String timezone,
  }) = _TimeZoneModel;

  factory TimeZoneModel.fromJson(Map<String, dynamic> json) =>
      _$TimeZoneModelFromJson(json);
}
