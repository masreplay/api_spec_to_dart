// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_select_form_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UISelectFormFieldImpl _$$UISelectFormFieldImplFromJson(
        Map<String, dynamic> json) =>
    _$UISelectFormFieldImpl(
      key: json['key'] as String,
      name: json['name'] as String,
      hint: json['hint'] as String?,
      isRequired: json['is_required'] as bool,
      readOnly: json['read_only'] as bool? ?? false,
      doc: json['doc'] as String?,
      type: json['type'] as String? ?? String.select,
      options: json['options'] as List<dynamic>? ?? const [],
      defaultValue: json['default_value'] as String?,
      example: json['example'] as String?,
    );

Map<String, dynamic> _$$UISelectFormFieldImplToJson(
        _$UISelectFormFieldImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'hint': instance.hint,
      'is_required': instance.isRequired,
      'read_only': instance.readOnly,
      'doc': instance.doc,
      'type': instance.type,
      'options': instance.options,
      'default_value': instance.defaultValue,
      'example': instance.example,
    };
