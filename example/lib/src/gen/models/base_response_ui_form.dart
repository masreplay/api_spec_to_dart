import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_ui_form.freezed.dart';
part 'base_response_ui_form.g.dart';

///BaseResponse_UIForm_

@freezed
class BaseResponseUIForm with _$BaseResponseUIForm {
  const BaseResponseUIForm._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUIForm({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required UIForm data,
  }) = _BaseResponseUIForm;

  factory BaseResponseUIForm.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseUIFormFromJson(json);
}
