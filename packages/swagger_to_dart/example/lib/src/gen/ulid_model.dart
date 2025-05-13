library;

import 'exports.dart';
part 'ulid_model.freezed.dart';
part 'ulid_model.g.dart'; // UlidModel

@freezed
abstract class UlidModel with _$UlidModel {
  const UlidModel._();

  factory UlidModel.fromJson(Map<String, dynamic> json) =>
      _$UlidModelFromJson(json);
}
