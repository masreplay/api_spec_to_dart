import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'validation_constrained_int_queries.freezed.dart';
part 'validation_constrained_int_queries.g.dart';

/// validationConstrainedIntQueries
@freezed
abstract class ValidationConstrainedIntQueries
    with _$ValidationConstrainedIntQueries {
  const ValidationConstrainedIntQueries._();

  static const String valueKey = 'value';

  @JsonSerializable(converters: convertors)
  const factory ValidationConstrainedIntQueries({
    /// value, Integer between 0 and 99
    @JsonKey(name: ValidationConstrainedIntQueries.valueKey) required int value,
  }) = _ValidationConstrainedIntQueries;

  factory ValidationConstrainedIntQueries.fromJson(Map<String, dynamic> json) =>
      _$ValidationConstrainedIntQueriesFromJson(json);
}
