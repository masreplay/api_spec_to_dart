import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_device_create.freezed.dart';
part 'student_device_create.g.dart';

@freezed
class StudentDeviceCreate with _$StudentDeviceCreate {
  const StudentDeviceCreate._();

  @JsonSerializable(converters: convertors)
  const factory StudentDeviceCreate({
    @JsonKey(name: 'device_token')

    /// Device Token
    required String? deviceToken,
    @JsonKey(name: 'os_type')

    /// Os Type
    required String? oSType,
    @JsonKey(name: 'os_version')

    /// Os Version
    required String? oSVersion,
    @JsonKey(name: 'device_id')

    /// Device Id
    required String? deviceId,
    @JsonKey(name: 'device_name')

    /// Device Name
    required String? deviceName,
    @JsonKey(name: 'device_model')

    /// Device Model
    required String? deviceModel,
    @JsonKey(name: 'device_brand')

    /// Device Brand
    required String? deviceBrand,
    @JsonKey(name: 'serial_number')

    /// Serial Number
    required String? serialNumber,
    @JsonKey(name: 'device_manufacturer')

    /// Device Manufacturer
    required String? deviceManufacturer,
    @JsonKey(name: 'sdk_type')

    /// Sdk Type
    required String? sdkType,
    @JsonKey(name: 'extra_data')

    /// Extra Data
    required Map? extraData,
    @JsonKey(name: 'device_language')

    /// Device Language
    required String? deviceLanguage,
  }) = _StudentDeviceCreate;

  factory StudentDeviceCreate.fromJson(Map<String, dynamic> json) =>
      _$StudentDeviceCreateFromJson(json);
}
