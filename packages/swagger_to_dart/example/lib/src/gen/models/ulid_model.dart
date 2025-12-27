/// ULIDModel
/// {
///     "properties": {
///         "ulid": {
///             "anyOf": [
///                 {
///                     "type": "integer"
///                 },
///                 {
///                     "type": "string",
///                     "format": "binary"
///                 },
///                 {
///                     "type": "string"
///                 }
///             ],
///             "title": "Ulid"
///         }
///     },
///     "type": "object",
///     "required": [
///         "ulid"
///     ],
///     "title": "ULIDModel"
/// }
library ulid_model;

import 'exports.dart';
part 'ulid_model.freezed.dart';
part 'ulid_model.g.dart'; // UlidModel

@freezed
abstract class UlidModel with _$UlidModel {
  const UlidModel._();

  @jsonSerializable
  const factory UlidModel({
    /// ulid
    @JsonKey(name: UlidModel.ulidKey_) required dynamic ulid,
  }) = _UlidModel;

  factory UlidModel.fromJson(Map<String, dynamic> json) =>
      _$UlidModelFromJson(json);

  static const String ulidKey_ = r'ulid';
}
