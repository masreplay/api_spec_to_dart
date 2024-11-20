import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'ui_select_form_field_option.freezed.dart';
part 'ui_select_form_field_option.g.dart';

@freezed
class UISelectFormFieldOption with _$UISelectFormFieldOption {
  const UISelectFormFieldOption._();

  @JsonSerializable(converters: convertors)
  const factory UISelectFormFieldOption({
    @JsonKey(name: 'value')

    /// Value
    required String value,
    @JsonKey(name: 'text')

    /// Text
    required String text,
  }) = _UISelectFormFieldOption;

  factory UISelectFormFieldOption.fromJson(Map<String, dynamic> json) =>
      _$UISelectFormFieldOptionFromJson(json);
}
