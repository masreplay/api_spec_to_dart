import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'ui_form.freezed.dart';
part 'ui_form.g.dart';

@freezed
class UIForm with _$UIForm {
  const UIForm._();

  @JsonSerializable(converters: convertors)
  const factory UIForm({
    @JsonKey(name: 'key')

    /// Key
    required String key,
    @JsonKey(name: 'fields')

    /// Fields
    required List fields,
    @JsonKey(name: 'title')

    /// Title
    required String title,
    @JsonKey(name: 'description')

    /// Description
    required String? description,
    @JsonKey(name: 'submit_text')

    /// Submit Text
    required String submitText,
    @JsonKey(name: 'cancel_text')

    /// Cancel Text
    required String cancelText,
    @JsonKey(name: 'success_message')

    /// Success Message
    required String successMessage,
    @JsonKey(name: 'error_message')

    /// Error Message
    required String errorMessage,
    @JsonKey(name: 'doc')

    /// Doc
    required String? doc,
  }) = _UIForm;

  factory UIForm.fromJson(Map<String, dynamic> json) => _$UIFormFromJson(json);
}
