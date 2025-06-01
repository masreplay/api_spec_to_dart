import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class TimeOfDayStringJsonConverter implements JsonConverter<TimeOfDay, String> {
  const TimeOfDayStringJsonConverter();

  // 1:30:00 -> 1:30
  // PT1H30M -> 1:30:00
  @override
  TimeOfDay fromJson(String json) {
    if (json.contains(':')) {
      final time = json.split(':');
      return TimeOfDay(
        hour: int.tryParse(time[0]) ?? 0,
        minute: int.tryParse(time[1]) ?? 0,
      );
    } else {
      final regex = RegExp(r'PT(?:(\d+)H)?(?:(\d+)M)?');
      final match = regex.firstMatch(json);

      final hours =
          match?.group(1) != null ? int.tryParse(match!.group(1)!) ?? 0 : 0;
      final minutes =
          match?.group(2) != null ? int.tryParse(match!.group(2)!) ?? 0 : 0;

      return TimeOfDay(
        hour: hours,
        minute: minutes,
      );
    }
  }

  // 1:30 -> 1:30:00
  @override
  String toJson(TimeOfDay object) {
    final hour = object.hour.toString().padLeft(2, '0');
    final minute = object.minute.toString().padLeft(2, '0');
    final second = '00';

    return '$hour:$minute:$second';
  }
}
