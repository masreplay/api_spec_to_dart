// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateCategoryDto _$CreateCategoryDtoFromJson(Map<String, dynamic> json) =>
    _CreateCategoryDto(
      name: json['name'] as String,
      parentId: json['parent_id'] as String?,
      defaultMarkupPercentage:
          (json['default_markup_percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CreateCategoryDtoToJson(_CreateCategoryDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      if (instance.parentId case final value?) 'parent_id': value,
      if (instance.defaultMarkupPercentage case final value?)
        'default_markup_percentage': value,
    };
