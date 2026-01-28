// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) => _CategoryDto(
      id: json['id'] as String,
      name: json['name'] as String,
      parentId: json['parent_id'] as String?,
      defaultMarkupPercentage:
          (json['default_markup_percentage'] as num?)?.toDouble(),
      children: (json['children'] as List<dynamic>)
          .map((e) => CategoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryDtoToJson(_CategoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      if (instance.parentId case final value?) 'parent_id': value,
      if (instance.defaultMarkupPercentage case final value?)
        'default_markup_percentage': value,
      'children': instance.children.map((e) => e.toJson()).toList(),
    };
