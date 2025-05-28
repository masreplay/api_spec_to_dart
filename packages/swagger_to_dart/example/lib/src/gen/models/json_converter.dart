library;

import 'package:dio/dio.dart';
import 'models.dart';
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

const jsonSerializableConverters = <JsonConverter>[
  MultipartFileJsonConverter(),
  AnimalMapJsonConverter(),
  ResponseModelsResponseMultipleMapJsonConverter(),
];

const jsonSerializable = JsonSerializable(
  converters: jsonSerializableConverters,
);
