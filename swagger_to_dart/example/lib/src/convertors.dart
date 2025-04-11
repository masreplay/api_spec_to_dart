import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

const convertors = <JsonConverter>[MultipartFileJsonConverter()];

class MultipartFileJsonConverter
    implements JsonConverter<MultipartFile, MultipartFile> {
  const MultipartFileJsonConverter();

  @override
  MultipartFile fromJson(MultipartFile json) => json;

  @override
  MultipartFile toJson(MultipartFile object) => object;
}
