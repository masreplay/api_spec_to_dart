library;

import 'exports.dart';
part 'ulid_model.freezed.dart';
part 'ulid_model.g.dart'; // UlidModel

@freezed
sealed class UlidModel with _$UlidModel {
  const UlidModel._();

  const factory UlidModel.fallback(Map<String, dynamic> value) =
      UlidModelFallback;

  factory UlidModel.fromJson(Map<String, dynamic> json) =>
      _$UlidModelFromJson(json);
}
