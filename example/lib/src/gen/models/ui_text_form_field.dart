import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'ui_text_form_field.freezed.dart';
part 'ui_text_form_field.g.dart';

///UITextFormField

@freezed
class UITextFormField with _$UITextFormField {
  const UITextFormField._();

  @JsonSerializable(converters: convertors)
  const factory UITextFormField({
    /// Key
    @JsonKey(name: 'key') required String key,

    /// Name
    @JsonKey(name: 'name') required String name,

    /// Hint
    @JsonKey(name: 'hint') required String? hint,

    /// Is Required
    @JsonKey(name: 'is_required') required bool isRequired,

    /// Read Only
    @Default(false) @JsonKey(name: 'read_only') bool readOnly,

    /// Doc
    @JsonKey(name: 'doc') required String? doc,

    /// Type
    @Default('text') @JsonKey(name: 'type') String type,

    /// Regex
    @JsonKey(name: 'regex') required String? regex,

    /// Default Value
    @JsonKey(name: 'default_value') required String? defaultValue,

    /// Example
    @JsonKey(name: 'example') required String? example,

    /// Validation Message
    @JsonKey(name: 'validation_message') required String? validationMessage,
  }) = _UITextFormField;

  factory UITextFormField.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UITextFormFieldFromJson(json);
}
