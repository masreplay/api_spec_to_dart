library json_converter;

import 'package:dio/dio.dart';
import 'exports.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class AnimalMapJsonConverter
    implements JsonConverter<Animal, Map<String, dynamic>> {
  const AnimalMapJsonConverter();

  static const String unionKey = r'value';

  @override
  Animal fromJson(Map<String, dynamic> json) {
    return Animal.fromJson({unionKey: json, ...json});
  }

  @override
  Map<String, dynamic> toJson(Animal object) {
    return {unionKey: object.toJson(), ...object.toJson()};
  }
}

class ResponseModelsResponseMultipleMapJsonConverter
    implements
        JsonConverter<ResponseModelsResponseMultiple, Map<String, dynamic>> {
  const ResponseModelsResponseMultipleMapJsonConverter();

  static const String unionKey = r'value';

  @override
  ResponseModelsResponseMultiple fromJson(Map<String, dynamic> json) {
    return ResponseModelsResponseMultiple.fromJson({unionKey: json, ...json});
  }

  @override
  Map<String, dynamic> toJson(ResponseModelsResponseMultiple object) {
    return {unionKey: object.toJson(), ...object.toJson()};
  }
}

class MultipartFileJsonConverter
    implements JsonConverter<MultipartFile, MultipartFile> {
  const MultipartFileJsonConverter();

  @override
  MultipartFile fromJson(MultipartFile json) => json;

  @override
  MultipartFile toJson(MultipartFile object) => object;
}

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

      final hours = match?.group(1) != null
          ? int.tryParse(match!.group(1)!) ?? 0
          : 0;
      final minutes = match?.group(2) != null
          ? int.tryParse(match!.group(2)!) ?? 0
          : 0;

      return TimeOfDay(hour: hours, minute: minutes);
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

class ColorStringJsonConverter implements JsonConverter<Color, String> {
  const ColorStringJsonConverter();

  // #000000 -> Color(0xFF000000)
  // #00000000 -> Color(0x00000000)
  @override
  Color fromJson(String json) {
    if (json.startsWith('#')) {
      return Color(int.parse(json.substring(1), radix: 16));
    } else {
      return Color(int.parse(json, radix: 16));
    }
  }

  // #000000 -> Color(0xFF000000)
  // #00000000 -> Color(0x00000000)
  @override
  String toJson(Color object) {
    return '#${object.toARGB32().toRadixString(16).padLeft(8, '0')}';
  }
}

const jsonSerializableConverters = <JsonConverter>[
  MultipartFileJsonConverter(),
  TimeOfDayStringJsonConverter(),
  ColorStringJsonConverter(),
  AnimalMapJsonConverter(),
  ResponseModelsResponseMultipleMapJsonConverter(),
];
const jsonSerializable = JsonSerializable(
  converters: jsonSerializableConverters,
);
