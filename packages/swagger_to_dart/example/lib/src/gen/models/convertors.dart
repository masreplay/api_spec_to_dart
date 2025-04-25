import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

class MultipartFileJsonConverter
    implements JsonConverter<MultipartFile, MultipartFile> {
  const MultipartFileJsonConverter();

  @override
  MultipartFile fromJson(MultipartFile json) => json;

  @override
  MultipartFile toJson(MultipartFile object) => object;
}

class Convertors {
  static const List<JsonConverter> convertors = <JsonConverter>[
    MultipartFileJsonConverter(),
  ];
}
