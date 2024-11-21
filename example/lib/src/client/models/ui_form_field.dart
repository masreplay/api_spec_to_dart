import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'ui_form_field.freezed.dart';
part 'ui_form_field.g.dart';

@freezed
class UIFormField with _$UIFormField {
  const UIFormField._();

  @JsonSerializable(converters: convertors)
  const factory UIFormField() = _UIFormField;

  factory UIFormField.fromJson(Map<String, dynamic> json) =>
      _$UIFormFieldFromJson(json);
}
