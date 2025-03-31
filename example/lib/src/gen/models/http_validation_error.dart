import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';

part 'http_validation_error.freezed.dart';
part 'http_validation_error.g.dart';

/// HTTPValidationError

@freezed
abstract class HttpValidationError with _$HttpValidationError {
  const HttpValidationError._();

  static const String detailKey = 'detail';

  @JsonSerializable(converters: convertors)
  const factory HttpValidationError({
    /// detail
    @JsonKey(name: HttpValidationError.detailKey)
    required List<ValidationError> detail,
  }) = _HttpValidationError;

  factory HttpValidationError.fromJson(Map<String, dynamic> json) =>
      _$HttpValidationErrorFromJson(json);
}
