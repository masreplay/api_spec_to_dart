library;

import 'package:freezed_annotation/freezed_annotation.dart';
part 'phone_number_model.freezed.dart';
part 'phone_number_model.g.dart'; // PhoneNumberModel

@freezed
abstract class PhoneNumberModel with _$PhoneNumberModel {
  const PhoneNumberModel._();

  const factory PhoneNumberModel({
    /// phone
    @JsonKey(name: phoneKey) String phone,

    /// phone2
    @JsonKey(name: phone2Key) String phone2,
  }) = _PhoneNumberModel;

  factory PhoneNumberModel.fromJson(Map<String, dynamic> json) =>
      _$PhoneNumberModelFromJson(json);

  static const String phoneKey = "phone";

  static const String phone2Key = "phone2";
}
