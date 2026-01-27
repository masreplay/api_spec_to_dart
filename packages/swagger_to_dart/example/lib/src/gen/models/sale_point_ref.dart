/// SalePointRef
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
library sale_point_ref;

import 'exports.dart';
part 'sale_point_ref.freezed.dart';
part 'sale_point_ref.g.dart'; // SalePointRef

@freezed
abstract class SalePointRef with _$SalePointRef {
  const SalePointRef._();

  @jsonSerializable
  const factory SalePointRef({
    /// id
    @JsonKey(name: SalePointRef.idKey_) required String id,

    /// name
    @JsonKey(name: SalePointRef.nameKey_) required String name,
  }) = _SalePointRef;

  factory SalePointRef.fromJson(Map<String, dynamic> json) =>
      _$SalePointRefFromJson(json);

  static const String idKey_ = r'id';

  static const String nameKey_ = r'name';
}
