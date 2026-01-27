// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateCategoryDto _$UpdateCategoryDtoFromJson(Map<String, dynamic> json) =>
    _UpdateCategoryDto(
      name: json['name'] as String?,
      parentId: json['parent_id'] as String?,
      defaultMarkupPercentage:
          (json['default_markup_percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UpdateCategoryDtoToJson(_UpdateCategoryDto instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.parentId case final value?) 'parent_id': value,
      if (instance.defaultMarkupPercentage case final value?)
        'default_markup_percentage': value,
    };
