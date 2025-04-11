import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'advanced_error_custom_queries.freezed.dart';
part 'advanced_error_custom_queries.g.dart';

/// advancedErrorCustomQueries
@freezed
abstract class AdvancedErrorCustomQueries with _$AdvancedErrorCustomQueries {
  const AdvancedErrorCustomQueries._();

  static const String codeKey = 'code';

  @JsonSerializable(converters: convertors)
  const factory AdvancedErrorCustomQueries({
    /// code, HTTP error code to simulate
    @JsonKey(name: AdvancedErrorCustomQueries.codeKey) required int code,
  }) = _AdvancedErrorCustomQueries;

  factory AdvancedErrorCustomQueries.fromJson(Map<String, dynamic> json) =>
      _$AdvancedErrorCustomQueriesFromJson(json);
}
