import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_text_form_field.freezed.dart';
part 'ui_text_form_field.g.dart';

@freezed
class UITextFormField with _$UITextFormField {
  const factory UITextFormField({
    @JsonKey(name: 'key') required String key,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'hint') required String? hint,
    @JsonKey(name: 'is_required') required bool isRequired,
    @Default(false) @JsonKey(name: 'read_only') required bool readOnly,
    @JsonKey(name: 'doc') required String? doc,
    @Default(String.text) @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'regex') required String? regex,
    @JsonKey(name: 'default_value') required String? defaultValue,
    @JsonKey(name: 'example') required String? example,
    @JsonKey(name: 'validation_message') required String? validationMessage,
  }) = _UITextFormField;

  factory UITextFormField.fromJson(Map<String, dynamic> json) =>
      _$UITextFormFieldFromJson(json);
}
