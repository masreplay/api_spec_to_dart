import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:example/src/gen/models/models.dart';

part 'ui_form_field.freezed.dart';
part 'ui_form_field.g.dart';

///UIFormField

@freezed
class UIFormField with _$UIFormField {
  const factory UIFormField.fallback() = UIFormFieldFallback;

  @FreezedUnionValue('UITextFormField')
  const factory UIFormField.uITextFormField(
    UITextFormField value,
  ) = UIFormFieldUITextFormField;

  @FreezedUnionValue('UICheckboxFormField')
  const factory UIFormField.uICheckboxFormField(
    UICheckboxFormField value,
  ) = UIFormFieldUICheckboxFormField;

  @FreezedUnionValue('UISelectFormField')
  const factory UIFormField.uISelectFormField(
    UISelectFormField value,
  ) = UIFormFieldUISelectFormField;

  @FreezedUnionValue('UIDateFormField')
  const factory UIFormField.uIDateFormField(
    UIDateFormField value,
  ) = UIFormFieldUIDateFormField;

  factory UIFormField.fromJson(Map<String, dynamic> json) =>
      _$UIFormFieldFromJson(json);
}
