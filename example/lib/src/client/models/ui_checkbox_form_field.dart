import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'ui_checkbox_form_field.freezed.dart';
part 'ui_checkbox_form_field.g.dart';

@freezed
class UICheckboxFormField with _$UICheckboxFormField {
  const UICheckboxFormField._();

  @JsonSerializable(converters: convertors)
  const factory UICheckboxFormField({
    @JsonKey(name: 'key')

    /// Key
    required String key,
    @JsonKey(name: 'name')

    /// Name
    required String name,
    @JsonKey(name: 'hint')

    /// Hint
    required String? hint,
    @JsonKey(name: 'is_required')

    /// Is Required
    required bool isRequired,
    @Default(false)
    @JsonKey(name: 'read_only')

    /// Read Only
    required bool readOnly,
    @JsonKey(name: 'doc')

    /// Doc
    required String? doc,
    @Default(checkbox)
    @JsonKey(name: 'type')

    /// Type
    required String type,
    @Default(false)
    @JsonKey(name: 'default_value')

    /// Default Value
    required bool defaultValue,
    @JsonKey(name: 'example')

    /// Example
    required bool example,
  }) = _UICheckboxFormField;

  factory UICheckboxFormField.fromJson(Map<String, dynamic> json) =>
      _$UICheckboxFormFieldFromJson(json);
}
