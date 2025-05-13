// MACAddressModel
// {
//     "properties": {
//         "mac_address": {
//             "type": "string",
//             "title": "Mac Address"
//         }
//     },
//     "type": "object",
//     "required": [
//         "mac_address"
//     ],
//     "title": "MACAddressModel"
// }

library;

import 'exports.dart';
part 'mac_address_model.freezed.dart';
part 'mac_address_model.g.dart'; // MACAddressModel

@freezed
abstract class MACAddressModel with _$MACAddressModel {
  const MACAddressModel._();

  const factory MACAddressModel({
    /// macAddress
    @JsonKey(name: MACAddressModel.macAddressKey) required String macAddress,
  }) = _MACAddressModel;

  factory MACAddressModel.fromJson(Map<String, dynamic> json) =>
      _$MACAddressModelFromJson(json);

  static const String macAddressKey = "macAddress";
}
