import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'base_response_ui_form.freezed.dart';
part 'base_response_ui_form.g.dart';

@freezed
class BaseResponseUIForm with _$BaseResponseUIForm {
  const factory BaseResponseUIForm({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required UIForm data,
  }) = _BaseResponseUIForm;

  factory BaseResponseUIForm.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseUIFormFromJson(json);
}
