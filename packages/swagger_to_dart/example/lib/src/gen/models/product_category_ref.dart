/// ProductCategoryRef
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
library product_category_ref;

import 'exports.dart';
part 'product_category_ref.freezed.dart';
part 'product_category_ref.g.dart'; // ProductCategoryRef

@freezed
abstract class ProductCategoryRef with _$ProductCategoryRef {
  const ProductCategoryRef._();

  @jsonSerializable
  const factory ProductCategoryRef({
    /// id
    @JsonKey(name: ProductCategoryRef.idKey_) required String id,

    /// name
    @JsonKey(name: ProductCategoryRef.nameKey_) required String name,
  }) = _ProductCategoryRef;

  factory ProductCategoryRef.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryRefFromJson(json);

  static const String idKey_ = r'id';

  static const String nameKey_ = r'name';
}
