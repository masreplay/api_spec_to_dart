import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'ui_checkbox_form_field.freezed.dart';
part 'ui_checkbox_form_field.g.dart';

///UICheckboxFormField

@freezed
class UICheckboxFormField with _$UICheckboxFormField {
  const UICheckboxFormField._();

  @JsonSerializable(converters: convertors)
  const factory UICheckboxFormField({
    /// Key
    @JsonKey(name: 'key') required String key,

    /// Name
    @JsonKey(name: 'name') required String name,

    /// Hint
    @JsonKey(name: 'hint') required String? hint,

    /// Is Required
    @JsonKey(name: 'is_required') required bool isRequired,

    /// Read Only
    @Default(false) @JsonKey(name: 'read_only') required bool readOnly,

    /// Doc
    @JsonKey(name: 'doc') required String? doc,

    /// Type
    @Default('checkbox') @JsonKey(name: 'type') required String type,

    /// Default Value
    @Default(false) @JsonKey(name: 'default_value') required bool defaultValue,

    /// Example
    @JsonKey(name: 'example') required bool example,
  }) = _UICheckboxFormField;

  factory UICheckboxFormField.fromJson(Map<String, dynamic> json) =>
      _$UICheckboxFormFieldFromJson(json);
}
