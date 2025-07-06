import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

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
