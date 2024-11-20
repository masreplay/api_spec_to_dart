import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_device_create.freezed.dart';
part 'student_device_create.g.dart';

@freezed
class StudentDeviceCreate with _$StudentDeviceCreate {
  const factory StudentDeviceCreate({
    @JsonKey(name: 'device_token') required String? deviceToken,
    @JsonKey(name: 'os_type') required String? oSType,
    @JsonKey(name: 'os_version') required String? oSVersion,
    @JsonKey(name: 'device_id') required String? deviceId,
    @JsonKey(name: 'device_name') required String? deviceName,
    @JsonKey(name: 'device_model') required String? deviceModel,
    @JsonKey(name: 'device_brand') required String? deviceBrand,
    @JsonKey(name: 'serial_number') required String? serialNumber,
    @JsonKey(name: 'device_manufacturer') required String? deviceManufacturer,
    @JsonKey(name: 'sdk_type') required String? sdkType,
    @JsonKey(name: 'extra_data') required Map? extraData,
    @JsonKey(name: 'device_language') required String? deviceLanguage,
  }) = _StudentDeviceCreate;

  factory StudentDeviceCreate.fromJson(Map<String, dynamic> json) =>
      _$StudentDeviceCreateFromJson(json);
}
