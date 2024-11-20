import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'ui_checkbox_form_field.freezed.dart';
part 'ui_checkbox_form_field.g.dart';

@freezed
class UICheckboxFormField with _$UICheckboxFormField {
  const UICheckboxFormField._();

  @JsonSerializable(converters: convertors)
  const factory UICheckboxFormField({
    @JsonKey(name: 'key') required String key,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'hint') required String? hint,
    @JsonKey(name: 'is_required') required bool isRequired,
    @Default(false) @JsonKey(name: 'read_only') required bool readOnly,
    @JsonKey(name: 'doc') required String? doc,
    @Default(checkbox) @JsonKey(name: 'type') required String type,
    @Default(false) @JsonKey(name: 'default_value') required bool defaultValue,
    @JsonKey(name: 'example') required bool example,
  }) = _UICheckboxFormField;

  factory UICheckboxFormField.fromJson(Map<String, dynamic> json) =>
      _$UICheckboxFormFieldFromJson(json);
}
