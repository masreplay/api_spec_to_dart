library m_a_c_address_model;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'm_a_c_address_model.freezed.dart';
part 'm_a_c_address_model.g.dart'; // MACAddressModel

@freezed
abstract class MACAddressModel with _$MACAddressModel {
  const MACAddressModel._();

  const factory MACAddressModel(
    /// macAddress
    @JsonKey(name: macAddressKey) String macAddress,
  ) = _MACAddressModel;

  factory MACAddressModel.fromJson(Map<String, dynamic> json) =>
      _$MACAddressModelFromJson(json);

  static const String macAddressKey = "macAddress";
}
