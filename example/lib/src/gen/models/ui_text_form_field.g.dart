// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_text_form_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UITextFormFieldImpl _$$UITextFormFieldImplFromJson(
        Map<String, dynamic> json) =>
    _$UITextFormFieldImpl(
      key: json['key'] as String,
      name: json['name'] as String,
      hint: json['hint'] as String?,
      isRequired: json['is_required'] as bool,
      readOnly: json['read_only'] as bool? ?? false,
      doc: json['doc'] as String?,
      type: json['type'] as String? ?? 'text',
      regex: json['regex'] as String?,
      defaultValue: json['default_value'] as String?,
      example: json['example'] as String?,
      validationMessage: json['validation_message'] as String?,
    );

Map<String, dynamic> _$$UITextFormFieldImplToJson(
        _$UITextFormFieldImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'hint': instance.hint,
      'is_required': instance.isRequired,
      'read_only': instance.readOnly,
      'doc': instance.doc,
      'type': instance.type,
      'regex': instance.regex,
      'default_value': instance.defaultValue,
      'example': instance.example,
      'validation_message': instance.validationMessage,
    };
