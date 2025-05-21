library;

import 'package:dio/dio.dart';
import 'models.dart';
import 'package:json_annotation/json_annotation.dart';

class CatDogParrotMapJsonConverter
    implements JsonConverter<CatDogParrot, Map<String, dynamic>> {
  const CatDogParrotMapJsonConverter();

  static const String unionKey = "value";

  @override
  CatDogParrot fromJson(Map<String, dynamic> json) {
    return CatDogParrot.fromJson({unionKey: json, ...json});
  }

  @override
  Map<String, dynamic> toJson(CatDogParrot object) {
    return {unionKey: object.toJson(), ...object.toJson()};
  }
}

class LocationUserMapJsonConverter
    implements JsonConverter<LocationUser, Map<String, dynamic>> {
  const LocationUserMapJsonConverter();

  static const String unionKey = "value";

  @override
  LocationUser fromJson(Map<String, dynamic> json) {
    return LocationUser.fromJson({unionKey: json, ...json});
  }

  @override
  Map<String, dynamic> toJson(LocationUser object) {
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

const jsonSerializable = JsonSerializable(
  converters: [
    MultipartFileJsonConverter(),
    CatDogParrotMapJsonConverter(),
    LocationUserMapJsonConverter(),
  ],
);
