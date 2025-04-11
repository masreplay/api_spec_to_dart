import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "mac_address_model.freezed.dart";
part "mac_address_model.g.dart";

/// MACAddressModel
@freezed
abstract class MACAddressModel with _$MACAddressModel {
  const MACAddressModel._();

  static const String macAddressKey = "mac_address";

  @JsonSerializable(converters: convertors)
  const factory MACAddressModel({
    /// mac_address
    @JsonKey(name: MACAddressModel.macAddressKey) required String macAddress,
  }) = _MACAddressModel;

  factory MACAddressModel.fromJson(Map<String, dynamic> json) =>
      _$MACAddressModelFromJson(json);
}
