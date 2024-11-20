// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UIFormImpl _$$UIFormImplFromJson(Map<String, dynamic> json) => _$UIFormImpl(
      key: json['key'] as String,
      fields: json['fields'] as List<dynamic>,
      title: json['title'] as String,
      description: json['description'] as String?,
      submitText: json['submit_text'] as String,
      cancelText: json['cancel_text'] as String,
      successMessage: json['success_message'] as String,
      errorMessage: json['error_message'] as String,
      doc: json['doc'] as String?,
    );

Map<String, dynamic> _$$UIFormImplToJson(_$UIFormImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'fields': instance.fields,
      'title': instance.title,
      'description': instance.description,
      'submit_text': instance.submitText,
      'cancel_text': instance.cancelText,
      'success_message': instance.successMessage,
      'error_message': instance.errorMessage,
      'doc': instance.doc,
    };
