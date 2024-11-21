import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'ui_select_form_field_option.freezed.dart';
part 'ui_select_form_field_option.g.dart';

///UISelectFormFieldOption

@freezed
class UISelectFormFieldOption with _$UISelectFormFieldOption {
  const UISelectFormFieldOption._();

  @JsonSerializable(converters: convertors)
  const factory UISelectFormFieldOption({
    /// Value
    @JsonKey(name: 'value') required String value,

    /// Text
    @JsonKey(name: 'text') required String text,
  }) = _UISelectFormFieldOption;

  factory UISelectFormFieldOption.fromJson(Map<String, dynamic> json) =>
      _$UISelectFormFieldOptionFromJson(json);
}
