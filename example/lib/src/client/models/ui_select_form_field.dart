import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_select_form_field.freezed.dart';
part 'ui_select_form_field.g.dart';

@freezed
class UISelectFormField with _$UISelectFormField {
  const factory UISelectFormField({
    @JsonKey(name: 'key') required String key,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'hint') required String? hint,
    @JsonKey(name: 'is_required') required bool isRequired,
    @Default(false) @JsonKey(name: 'read_only') required bool readOnly,
    @JsonKey(name: 'doc') required String? doc,
    @Default(String.select) @JsonKey(name: 'type') required String type,
    @Default([]) @JsonKey(name: 'options') required List options,
    @JsonKey(name: 'default_value') required String? defaultValue,
    @JsonKey(name: 'example') required String? example,
  }) = _UISelectFormField;

  factory UISelectFormField.fromJson(Map<String, dynamic> json) =>
      _$UISelectFormFieldFromJson(json);
}
