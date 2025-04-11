import "package:freezed_annotation/freezed_annotation.dart";

part "ulid_model.freezed.dart";
part "ulid_model.g.dart";

/// ULIDModel
@freezed
sealed class UlidModel with _$UlidModel {
  static const String ulidKey = "ulid";

  const factory UlidModel.fallback() = UlidModelFallback;

  factory UlidModel.fromJson(Map<String, dynamic> json) =>
      _$UlidModelFromJson(json);
}
