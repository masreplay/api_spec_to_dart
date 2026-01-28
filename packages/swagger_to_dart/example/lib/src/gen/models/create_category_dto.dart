/// CreateCategoryDto
/// {
///     "properties": {
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
///         }
///     },
///     "type": "object",
///     "required": [
///         "name"
///     ],
///     "additionalProperties": false
/// }
library create_category_dto;

import 'exports.dart';
part 'create_category_dto.freezed.dart';
part 'create_category_dto.g.dart'; // CreateCategoryDto

@freezed
abstract class CreateCategoryDto with _$CreateCategoryDto {
  const CreateCategoryDto._();

  @jsonSerializable
  const factory CreateCategoryDto({
    /// name
    @JsonKey(name: CreateCategoryDto.nameKey_) required String name,

    /// parentId
    @JsonKey(name: CreateCategoryDto.parentIdKey_) String? parentId,

    /// defaultMarkupPercentage
    @JsonKey(name: CreateCategoryDto.defaultMarkupPercentageKey_)
    double? defaultMarkupPercentage,
  }) = _CreateCategoryDto;

  factory CreateCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryDtoFromJson(json);

  static const String nameKey_ = r'name';

  static const String parentIdKey_ = r'parent_id';

  static const String defaultMarkupPercentageKey_ =
      r'default_markup_percentage';
}
