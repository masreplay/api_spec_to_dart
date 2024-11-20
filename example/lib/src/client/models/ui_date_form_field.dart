import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'ui_date_form_field.freezed.dart';
part 'ui_date_form_field.g.dart';

@freezed
class UIDateFormField with _$UIDateFormField {
  const UIDateFormField._();

  @JsonSerializable(converters: convertors)
  const factory UIDateFormField({
    @JsonKey(name: 'key') required String key,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'hint') required String? hint,
    @JsonKey(name: 'is_required') required bool isRequired,
    @Default(false) @JsonKey(name: 'read_only') required bool readOnly,
    @JsonKey(name: 'doc') required String? doc,
    @Default(date) @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'default_value') required String? defaultValue,
    @JsonKey(name: 'format') required String format,
    @JsonKey(name: 'example') required String? example,
    @JsonKey(name: 'min_date') required DateTime? minDate,
    @JsonKey(name: 'max_date') required DateTime? maxDate,
  }) = _UIDateFormField;

  factory UIDateFormField.fromJson(Map<String, dynamic> json) =>
      _$UIDateFormFieldFromJson(json);
}
