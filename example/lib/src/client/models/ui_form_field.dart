import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_form_field.freezed.dart';
part 'ui_form_field.g.dart';

@freezed
class UIFormField with _$UIFormField {
  const factory UIFormField() = _UIFormField;

  factory UIFormField.fromJson(Map<String, dynamic> json) =>
      _$UIFormFieldFromJson(json);
}
