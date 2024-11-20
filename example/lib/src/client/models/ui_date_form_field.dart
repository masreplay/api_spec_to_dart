import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'ui_date_form_field.freezed.dart';
part 'ui_date_form_field.g.dart';

@freezed
class UIDateFormField with _$UIDateFormField {
  const UIDateFormField._();

  @JsonSerializable(converters: convertors)
  const factory UIDateFormField({
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
    @Default(date)
    @JsonKey(name: 'type')

    /// Type
    required String type,
    @JsonKey(name: 'default_value')

    /// Default Value
    required String? defaultValue,
    @JsonKey(name: 'format')

    /// Format
    required String format,
    @JsonKey(name: 'example')

    /// Example
    required String? example,
    @JsonKey(name: 'min_date')

    /// Min Date
    required DateTime? minDate,
    @JsonKey(name: 'max_date')

    /// Max Date
    required DateTime? maxDate,
  }) = _UIDateFormField;

  factory UIDateFormField.fromJson(Map<String, dynamic> json) =>
      _$UIDateFormFieldFromJson(json);
}
