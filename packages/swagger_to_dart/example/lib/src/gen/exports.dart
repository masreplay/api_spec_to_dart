import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:dio/dio.dart';
export 'package:freezed_annotation/freezed_annotation.dart';

export 'models.dart';

class MultipartFileJsonConverter
    implements JsonConverter<MultipartFile, MultipartFile> {
  const MultipartFileJsonConverter();

  @override
  MultipartFile fromJson(MultipartFile json) => json;

  @override
  MultipartFile toJson(MultipartFile object) => object;
}
