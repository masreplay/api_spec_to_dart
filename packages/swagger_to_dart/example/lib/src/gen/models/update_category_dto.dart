/// UpdateCategoryDto
/// {
///     "properties": {
///         "name": {
///             "type": "string",
///             "nullable": true
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
///         }
///     },
///     "type": "object",
///     "additionalProperties": false
/// }
library update_category_dto;

import 'exports.dart';
part 'update_category_dto.freezed.dart';
part 'update_category_dto.g.dart'; // UpdateCategoryDto

@freezed
abstract class UpdateCategoryDto with _$UpdateCategoryDto {
  const UpdateCategoryDto._();

  @jsonSerializable
  const factory UpdateCategoryDto({
    /// name
    @JsonKey(name: UpdateCategoryDto.nameKey_) String? name,

    /// parentId
    @JsonKey(name: UpdateCategoryDto.parentIdKey_) String? parentId,

    /// defaultMarkupPercentage
    @JsonKey(name: UpdateCategoryDto.defaultMarkupPercentageKey_)
    double? defaultMarkupPercentage,
  }) = _UpdateCategoryDto;

  factory UpdateCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateCategoryDtoFromJson(json);

  static const String nameKey_ = r'name';

  static const String parentIdKey_ = r'parent_id';

  static const String defaultMarkupPercentageKey_ =
      r'default_markup_percentage';
}
