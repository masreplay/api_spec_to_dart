import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_device_create.freezed.dart';
part 'student_device_create.g.dart';

///StudentDeviceCreate

@freezed
class StudentDeviceCreate with _$StudentDeviceCreate {
  const StudentDeviceCreate._();

  @JsonSerializable(converters: convertors)
  const factory StudentDeviceCreate({
    /// Device Token
    @JsonKey(name: 'device_token') required String? deviceToken,

    /// Os Type
    @JsonKey(name: 'os_type') required String? oSType,

    /// Os Version
    @JsonKey(name: 'os_version') required String? oSVersion,

    /// Device Id
    @JsonKey(name: 'device_id') required String? deviceId,

    /// Device Name
    @JsonKey(name: 'device_name') required String? deviceName,

    /// Device Model
    @JsonKey(name: 'device_model') required String? deviceModel,

    /// Device Brand
    @JsonKey(name: 'device_brand') required String? deviceBrand,

    /// Serial Number
    @JsonKey(name: 'serial_number') required String? serialNumber,

    /// Device Manufacturer
    @JsonKey(name: 'device_manufacturer') required String? deviceManufacturer,

    /// Sdk Type
    @JsonKey(name: 'sdk_type') required String? sdkType,

    /// Extra Data
    @JsonKey(name: 'extra_data') required Map<String, dynamic>? extraData,

    /// Device Language
    @JsonKey(name: 'device_language') required String? deviceLanguage,
  }) = _StudentDeviceCreate;

  factory StudentDeviceCreate.fromJson(Map<String, dynamic> json) =>
      _$StudentDeviceCreateFromJson(json);
}
