// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_date_form_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UIDateFormFieldImpl _$$UIDateFormFieldImplFromJson(
        Map<String, dynamic> json) =>
    _$UIDateFormFieldImpl(
      key: json['key'] as String,
      name: json['name'] as String,
      hint: json['hint'] as String?,
      isRequired: json['is_required'] as bool,
      readOnly: json['read_only'] as bool? ?? false,
      doc: json['doc'] as String?,
      type: json['type'] as String? ?? date,
      defaultValue: json['default_value'] as String?,
      format: json['format'] as String,
      example: json['example'] as String?,
      minDate: json['min_date'] == null
          ? null
          : DateTime.parse(json['min_date'] as String),
      maxDate: json['max_date'] == null
          ? null
          : DateTime.parse(json['max_date'] as String),
    );

Map<String, dynamic> _$$UIDateFormFieldImplToJson(
        _$UIDateFormFieldImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'hint': instance.hint,
      'is_required': instance.isRequired,
      'read_only': instance.readOnly,
      'doc': instance.doc,
      'type': instance.type,
      'default_value': instance.defaultValue,
      'format': instance.format,
      'example': instance.example,
      'min_date': instance.minDate?.toIso8601String(),
      'max_date': instance.maxDate?.toIso8601String(),
    };
