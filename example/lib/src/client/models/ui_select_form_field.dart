import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'ui_select_form_field.freezed.dart';
part 'ui_select_form_field.g.dart';

@freezed
class UISelectFormField with _$UISelectFormField {
  const UISelectFormField._();

  @JsonSerializable(converters: convertors)
  const factory UISelectFormField({
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
    @Default(select) @JsonKey(name: 'type') required String type,

    /// Options
    @Default([])
    @JsonKey(name: 'options')
    required List<UISelectFormFieldOption> options,

    /// Default Value
    @JsonKey(name: 'default_value') required String? defaultValue,

    /// Example
    @JsonKey(name: 'example') required String? example,
  }) = _UISelectFormField;

  factory UISelectFormField.fromJson(Map<String, dynamic> json) =>
      _$UISelectFormFieldFromJson(json);
}
