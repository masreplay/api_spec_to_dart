import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_form.freezed.dart';
part 'ui_form.g.dart';

@freezed
class UIForm with _$UIForm {
  const factory UIForm({
    @JsonKey(name: 'key') required String key,
    @JsonKey(name: 'fields') required List fields,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'submit_text') required String submitText,
    @JsonKey(name: 'cancel_text') required String cancelText,
    @JsonKey(name: 'success_message') required String successMessage,
    @JsonKey(name: 'error_message') required String errorMessage,
    @JsonKey(name: 'doc') required String? doc,
  }) = _UIForm;

  factory UIForm.fromJson(Map<String, dynamic> json) => _$UIFormFromJson(json);
}
