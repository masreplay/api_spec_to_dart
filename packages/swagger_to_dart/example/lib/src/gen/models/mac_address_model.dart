/// MACAddressModel
/// {
///     "properties": {
///         "mac_address": {
///             "type": "string",
///             "title": "Mac Address"
///         }
///     },
///     "type": "object",
///     "required": [
///         "mac_address"
///     ],
///     "title": "MACAddressModel"
/// }
library mac_address_model;

import 'exports.dart';
part 'mac_address_model.freezed.dart';
part 'mac_address_model.g.dart'; // MACAddressModel

@freezed
abstract class MACAddressModel with _$MACAddressModel {
  const MACAddressModel._();

  @jsonSerializable
  const factory MACAddressModel({
    /// macAddress
    @JsonKey(name: MACAddressModel.macAddressKey_) required String macAddress,
  }) = _MACAddressModel;

  factory MACAddressModel.fromJson(Map<String, dynamic> json) =>
      _$MACAddressModelFromJson(json);

  static const String macAddressKey_ = r'mac_address';
}
