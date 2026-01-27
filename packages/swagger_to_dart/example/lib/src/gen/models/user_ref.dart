/// UserRef
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "name": {
///             "type": "string"
///         }
///     },
///     "type": "object",
///     "required": [
///         "id",
///         "name"
///     ],
///     "additionalProperties": false
/// }
library user_ref;

import 'exports.dart';
part 'user_ref.freezed.dart';
part 'user_ref.g.dart'; // UserRef

@freezed
abstract class UserRef with _$UserRef {
  const UserRef._();

  @jsonSerializable
  const factory UserRef({
    /// id
    @JsonKey(name: UserRef.idKey_) required String id,

    /// name
    @JsonKey(name: UserRef.nameKey_) required String name,
  }) = _UserRef;

  factory UserRef.fromJson(Map<String, dynamic> json) =>
      _$UserRefFromJson(json);

  static const String idKey_ = r'id';

  static const String nameKey_ = r'name';
}
