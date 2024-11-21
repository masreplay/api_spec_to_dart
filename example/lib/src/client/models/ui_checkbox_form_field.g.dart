// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_checkbox_form_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UICheckboxFormFieldImpl _$$UICheckboxFormFieldImplFromJson(
        Map<String, dynamic> json) =>
    _$UICheckboxFormFieldImpl(
      key: json['key'] as String,
      name: json['name'] as String,
      hint: json['hint'] as String?,
      isRequired: json['is_required'] as bool,
      readOnly: json['read_only'] as bool? ?? false,
      doc: json['doc'] as String?,
      type: json['type'] as String? ?? checkbox,
      defaultValue: json['default_value'] as bool? ?? false,
      example: json['example'] as bool,
    );

Map<String, dynamic> _$$UICheckboxFormFieldImplToJson(
        _$UICheckboxFormFieldImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'hint': instance.hint,
      'is_required': instance.isRequired,
      'read_only': instance.readOnly,
      'doc': instance.doc,
      'type': instance.type,
      'default_value': instance.defaultValue,
      'example': instance.example,
    };
