/// PhoneNumberModel
///
/// ```json
/// {
///     "properties": {
///         "phone": {
///             "type": "string",
///             "format": "phone",
///             "title": "Phone"
///         },
///         "phone2": {
///             "type": "string",
///             "format": "phone",
///             "title": "Phone2"
///         }
///     },
///     "type": "object",
///     "required": [
///         "phone",
///         "phone2"
///     ],
///     "title": "PhoneNumberModel"
/// }
/// ```
library;

import 'exports.dart';
part 'phone_number_model.freezed.dart';
part 'phone_number_model.g.dart';

@freezed
abstract class PhoneNumberModel with _$PhoneNumberModel {
  const PhoneNumberModel._();

  @jsonSerializable
  const factory PhoneNumberModel({
    /// phone
    @JsonKey(name: PhoneNumberModel.phoneKey_) required String phone,

    /// phone2
    @JsonKey(name: PhoneNumberModel.phone2Key_) required String phone2,
  }) = _PhoneNumberModel;

  factory PhoneNumberModel.fromJson(Map<String, dynamic> json) =>
      _$PhoneNumberModelFromJson(json);

  static const String phoneKey_ = 'phone';

  static const String phone2Key_ = 'phone2';
}
