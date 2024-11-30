// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_device_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentDeviceCreateImpl _$$StudentDeviceCreateImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentDeviceCreateImpl(
      deviceToken: json['device_token'] as String?,
      oSType: json['os_type'] as String?,
      oSVersion: json['os_version'] as String?,
      deviceId: json['device_id'] as String?,
      deviceName: json['device_name'] as String?,
      deviceModel: json['device_model'] as String?,
      deviceBrand: json['device_brand'] as String?,
      serialNumber: json['serial_number'] as String?,
      deviceManufacturer: json['device_manufacturer'] as String?,
      sdkType: json['sdk_type'] as String?,
      extraData: json['extra_data'] as Map<String, dynamic>?,
      deviceLanguage: json['device_language'] as String?,
    );

Map<String, dynamic> _$$StudentDeviceCreateImplToJson(
        _$StudentDeviceCreateImpl instance) =>
    <String, dynamic>{
      'device_token': instance.deviceToken,
      'os_type': instance.oSType,
      'os_version': instance.oSVersion,
      'device_id': instance.deviceId,
      'device_name': instance.deviceName,
      'device_model': instance.deviceModel,
      'device_brand': instance.deviceBrand,
      'serial_number': instance.serialNumber,
      'device_manufacturer': instance.deviceManufacturer,
      'sdk_type': instance.sdkType,
      'extra_data': instance.extraData,
      'device_language': instance.deviceLanguage,
    };
