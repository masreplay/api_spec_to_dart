library phone_number_model;

import 'exports.dart';
part 'phone_number_model.freezed.dart';
part 'phone_number_model.g.dart'; // PhoneNumberModel

@freezed
abstract class PhoneNumberModel with _$PhoneNumberModel {
  const PhoneNumberModel._();

  const factory PhoneNumberModel({
    /// phone
    @JsonKey(name: PhoneNumberModel.phoneKey) required String phone,

    /// phone2
    @JsonKey(name: PhoneNumberModel.phone2Key) required String phone2,
  }) = _PhoneNumberModel;

  factory PhoneNumberModel.fromJson(Map<String, dynamic> json) =>
      _$PhoneNumberModelFromJson(json);

  static const String phoneKey = "phone";

  static const String phone2Key = "phone2";
}
