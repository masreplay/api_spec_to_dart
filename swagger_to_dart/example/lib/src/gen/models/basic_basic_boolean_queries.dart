import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'basic_basic_boolean_queries.freezed.dart';
part 'basic_basic_boolean_queries.g.dart';

/// basicBasicBooleanQueries
@freezed
abstract class BasicBasicBooleanQueries with _$BasicBasicBooleanQueries {
  const BasicBasicBooleanQueries._();

  static const String flagKey = 'flag';

  @JsonSerializable(converters: convertors)
  const factory BasicBasicBooleanQueries({
    /// flag
    @Default(false) @JsonKey(name: BasicBasicBooleanQueries.flagKey) bool flag,
  }) = _BasicBasicBooleanQueries;

  factory BasicBasicBooleanQueries.fromJson(Map<String, dynamic> json) =>
      _$BasicBasicBooleanQueriesFromJson(json);
}
