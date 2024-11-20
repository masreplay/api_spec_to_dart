import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'ui_select_form_field.freezed.dart';
part 'ui_select_form_field.g.dart';

@freezed
class UISelectFormField with _$UISelectFormField {
  const UISelectFormField._();

  @JsonSerializable(converters: convertors)
  const factory UISelectFormField({
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
    @Default(select)
    @JsonKey(name: 'type')

    /// Type
    required String type,
    @Default([])
    @JsonKey(name: 'options')

    /// Options
    required List options,
    @JsonKey(name: 'default_value')

    /// Default Value
    required String? defaultValue,
    @JsonKey(name: 'example')

    /// Example
    required String? example,
  }) = _UISelectFormField;

  factory UISelectFormField.fromJson(Map<String, dynamic> json) =>
      _$UISelectFormFieldFromJson(json);
}
