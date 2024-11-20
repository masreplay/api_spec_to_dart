import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'ui_text_form_field.freezed.dart';
part 'ui_text_form_field.g.dart';

@freezed
class UITextFormField with _$UITextFormField {
  const UITextFormField._();

  @JsonSerializable(converters: convertors)
  const factory UITextFormField({
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
    @Default(text)
    @JsonKey(name: 'type')

    /// Type
    required String type,
    @JsonKey(name: 'regex')

    /// Regex
    required String? regex,
    @JsonKey(name: 'default_value')

    /// Default Value
    required String? defaultValue,
    @JsonKey(name: 'example')

    /// Example
    required String? example,
    @JsonKey(name: 'validation_message')

    /// Validation Message
    required String? validationMessage,
  }) = _UITextFormField;

  factory UITextFormField.fromJson(Map<String, dynamic> json) =>
      _$UITextFormFieldFromJson(json);
}
