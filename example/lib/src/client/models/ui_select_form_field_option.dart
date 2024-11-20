import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_select_form_field_option.freezed.dart';
part 'ui_select_form_field_option.g.dart';

@freezed
class UISelectFormFieldOption with _$UISelectFormFieldOption {
  const factory UISelectFormFieldOption({
    @JsonKey(name: 'value') required String value,
    @JsonKey(name: 'text') required String text,
  }) = _UISelectFormFieldOption;

  factory UISelectFormFieldOption.fromJson(Map<String, dynamic> json) =>
      _$UISelectFormFieldOptionFromJson(json);
}
