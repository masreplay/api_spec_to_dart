/// CategoryDto
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "name": {
///             "type": "string"
///         },
///         "parent_id": {
///             "type": "string",
///             "format": "uuid",
///             "nullable": true
///         },
///         "default_markup_percentage": {
///             "type": "number",
///             "format": "double",
///             "nullable": true
///         },
///         "children": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/CategoryDto"
///             }
///         }
///     },
///     "type": "object",
///     "required": [
///         "children",
///         "id",
///         "name"
///     ],
///     "additionalProperties": false
/// }
library category_dto;

import 'exports.dart';
part 'category_dto.freezed.dart';
part 'category_dto.g.dart'; // CategoryDto

@freezed
abstract class CategoryDto with _$CategoryDto {
  const CategoryDto._();

  @jsonSerializable
  const factory CategoryDto({
    /// id
    @JsonKey(name: CategoryDto.idKey_) required String id,

    /// name
    @JsonKey(name: CategoryDto.nameKey_) required String name,

    /// parentId
    @JsonKey(name: CategoryDto.parentIdKey_) String? parentId,

    /// defaultMarkupPercentage
    @JsonKey(name: CategoryDto.defaultMarkupPercentageKey_)
    double? defaultMarkupPercentage,

    /// children
    @JsonKey(name: CategoryDto.childrenKey_)
    required List<CategoryDto> children,
  }) = _CategoryDto;

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);

  static const String idKey_ = r'id';

  static const String nameKey_ = r'name';

  static const String parentIdKey_ = r'parent_id';

  static const String defaultMarkupPercentageKey_ =
      r'default_markup_percentage';

  static const String childrenKey_ = r'children';
}
