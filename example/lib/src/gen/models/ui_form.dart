import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'ui_form.freezed.dart';
part 'ui_form.g.dart';

///UIForm

@freezed
class UIForm with _$UIForm {
  const UIForm._();

  @JsonSerializable(converters: convertors)
  const factory UIForm({
    /// Key
    @JsonKey(name: 'key') required String key,

    /// Fields
    @JsonKey(name: 'fields') required List<UIFormField> fields,

    /// Title
    @JsonKey(name: 'title') required String title,

    /// Description
    @JsonKey(name: 'description') required String? description,

    /// Submit Text
    @JsonKey(name: 'submit_text') required String submitText,

    /// Cancel Text
    @JsonKey(name: 'cancel_text') required String cancelText,

    /// Success Message
    @JsonKey(name: 'success_message') required String successMessage,

    /// Error Message
    @JsonKey(name: 'error_message') required String errorMessage,

    /// Doc
    @JsonKey(name: 'doc') required String? doc,
  }) = _UIForm;

  factory UIForm.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UIFormFromJson(json);
}
