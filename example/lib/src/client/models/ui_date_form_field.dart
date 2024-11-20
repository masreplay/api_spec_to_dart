import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'ui_date_form_field.freezed.dart';
part 'ui_date_form_field.g.dart';

@freezed
class UIDateFormField with _$UIDateFormField {
  const UIDateFormField._();

  @JsonSerializable(converters: convertors)
  const factory UIDateFormField({
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
    @Default(date) @JsonKey(name: 'type') required String type,

    /// Default Value
    @JsonKey(name: 'default_value') required String? defaultValue,

    /// Format
    @JsonKey(name: 'format') required String format,

    /// Example
    @JsonKey(name: 'example') required String? example,

    /// Min Date
    @JsonKey(name: 'min_date') required DateTime? minDate,

    /// Max Date
    @JsonKey(name: 'max_date') required DateTime? maxDate,
  }) = _UIDateFormField;

  factory UIDateFormField.fromJson(Map<String, dynamic> json) =>
      _$UIDateFormFieldFromJson(json);
}
