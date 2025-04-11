import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "models_response_multiple_queries.freezed.dart";
part "models_response_multiple_queries.g.dart";

/// modelsResponseMultipleQueries
@freezed
abstract class ModelsResponseMultipleQueries
    with _$ModelsResponseMultipleQueries {
  const ModelsResponseMultipleQueries._();

  static const String isUserKey = "is_user";

  @JsonSerializable(converters: convertors)
  const factory ModelsResponseMultipleQueries({
    /// is_user, Whether to return a user or location
    @Default(true)
    @JsonKey(name: ModelsResponseMultipleQueries.isUserKey)
    bool isUser,
  }) = _ModelsResponseMultipleQueries;

  factory ModelsResponseMultipleQueries.fromJson(Map<String, dynamic> json) =>
      _$ModelsResponseMultipleQueriesFromJson(json);
}
