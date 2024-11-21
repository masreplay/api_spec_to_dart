// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_device_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentDeviceCreate _$StudentDeviceCreateFromJson(Map<String, dynamic> json) {
  return _StudentDeviceCreate.fromJson(json);
}

/// @nodoc
mixin _$StudentDeviceCreate {
  /// Device Token
  @JsonKey(name: 'device_token')
  String? get deviceToken => throw _privateConstructorUsedError;

  /// Os Type
  @JsonKey(name: 'os_type')
  String? get oSType => throw _privateConstructorUsedError;

  /// Os Version
  @JsonKey(name: 'os_version')
  String? get oSVersion => throw _privateConstructorUsedError;

  /// Device Id
  @JsonKey(name: 'device_id')
  String? get deviceId => throw _privateConstructorUsedError;

  /// Device Name
  @JsonKey(name: 'device_name')
  String? get deviceName => throw _privateConstructorUsedError;

  /// Device Model
  @JsonKey(name: 'device_model')
  String? get deviceModel => throw _privateConstructorUsedError;

  /// Device Brand
  @JsonKey(name: 'device_brand')
  String? get deviceBrand => throw _privateConstructorUsedError;

  /// Serial Number
  @JsonKey(name: 'serial_number')
  String? get serialNumber => throw _privateConstructorUsedError;

  /// Device Manufacturer
  @JsonKey(name: 'device_manufacturer')
  String? get deviceManufacturer => throw _privateConstructorUsedError;

  /// Sdk Type
  @JsonKey(name: 'sdk_type')
  String? get sdkType => throw _privateConstructorUsedError;

  /// Extra Data
  @JsonKey(name: 'extra_data')
  Map<String, dynamic>? get extraData => throw _privateConstructorUsedError;

  /// Device Language
  @JsonKey(name: 'device_language')
  String? get deviceLanguage => throw _privateConstructorUsedError;

  /// Serializes this StudentDeviceCreate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentDeviceCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentDeviceCreateCopyWith<StudentDeviceCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentDeviceCreateCopyWith<$Res> {
  factory $StudentDeviceCreateCopyWith(
          StudentDeviceCreate value, $Res Function(StudentDeviceCreate) then) =
      _$StudentDeviceCreateCopyWithImpl<$Res, StudentDeviceCreate>;
  @useResult
  $Res call(
      {@JsonKey(name: 'device_token') String? deviceToken,
      @JsonKey(name: 'os_type') String? oSType,
      @JsonKey(name: 'os_version') String? oSVersion,
      @JsonKey(name: 'device_id') String? deviceId,
      @JsonKey(name: 'device_name') String? deviceName,
      @JsonKey(name: 'device_model') String? deviceModel,
      @JsonKey(name: 'device_brand') String? deviceBrand,
      @JsonKey(name: 'serial_number') String? serialNumber,
      @JsonKey(name: 'device_manufacturer') String? deviceManufacturer,
      @JsonKey(name: 'sdk_type') String? sdkType,
      @JsonKey(name: 'extra_data') Map<String, dynamic>? extraData,
      @JsonKey(name: 'device_language') String? deviceLanguage});
}

/// @nodoc
class _$StudentDeviceCreateCopyWithImpl<$Res, $Val extends StudentDeviceCreate>
    implements $StudentDeviceCreateCopyWith<$Res> {
  _$StudentDeviceCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentDeviceCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceToken = freezed,
    Object? oSType = freezed,
    Object? oSVersion = freezed,
    Object? deviceId = freezed,
    Object? deviceName = freezed,
    Object? deviceModel = freezed,
    Object? deviceBrand = freezed,
    Object? serialNumber = freezed,
    Object? deviceManufacturer = freezed,
    Object? sdkType = freezed,
    Object? extraData = freezed,
    Object? deviceLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      oSType: freezed == oSType
          ? _value.oSType
          : oSType // ignore: cast_nullable_to_non_nullable
              as String?,
      oSVersion: freezed == oSVersion
          ? _value.oSVersion
          : oSVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceModel: freezed == deviceModel
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceBrand: freezed == deviceBrand
          ? _value.deviceBrand
          : deviceBrand // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceManufacturer: freezed == deviceManufacturer
          ? _value.deviceManufacturer
          : deviceManufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      sdkType: freezed == sdkType
          ? _value.sdkType
          : sdkType // ignore: cast_nullable_to_non_nullable
              as String?,
      extraData: freezed == extraData
          ? _value.extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      deviceLanguage: freezed == deviceLanguage
          ? _value.deviceLanguage
          : deviceLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentDeviceCreateImplCopyWith<$Res>
    implements $StudentDeviceCreateCopyWith<$Res> {
  factory _$$StudentDeviceCreateImplCopyWith(_$StudentDeviceCreateImpl value,
          $Res Function(_$StudentDeviceCreateImpl) then) =
      __$$StudentDeviceCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'device_token') String? deviceToken,
      @JsonKey(name: 'os_type') String? oSType,
      @JsonKey(name: 'os_version') String? oSVersion,
      @JsonKey(name: 'device_id') String? deviceId,
      @JsonKey(name: 'device_name') String? deviceName,
      @JsonKey(name: 'device_model') String? deviceModel,
      @JsonKey(name: 'device_brand') String? deviceBrand,
      @JsonKey(name: 'serial_number') String? serialNumber,
      @JsonKey(name: 'device_manufacturer') String? deviceManufacturer,
      @JsonKey(name: 'sdk_type') String? sdkType,
      @JsonKey(name: 'extra_data') Map<String, dynamic>? extraData,
      @JsonKey(name: 'device_language') String? deviceLanguage});
}

/// @nodoc
class __$$StudentDeviceCreateImplCopyWithImpl<$Res>
    extends _$StudentDeviceCreateCopyWithImpl<$Res, _$StudentDeviceCreateImpl>
    implements _$$StudentDeviceCreateImplCopyWith<$Res> {
  __$$StudentDeviceCreateImplCopyWithImpl(_$StudentDeviceCreateImpl _value,
      $Res Function(_$StudentDeviceCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentDeviceCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceToken = freezed,
    Object? oSType = freezed,
    Object? oSVersion = freezed,
    Object? deviceId = freezed,
    Object? deviceName = freezed,
    Object? deviceModel = freezed,
    Object? deviceBrand = freezed,
    Object? serialNumber = freezed,
    Object? deviceManufacturer = freezed,
    Object? sdkType = freezed,
    Object? extraData = freezed,
    Object? deviceLanguage = freezed,
  }) {
    return _then(_$StudentDeviceCreateImpl(
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      oSType: freezed == oSType
          ? _value.oSType
          : oSType // ignore: cast_nullable_to_non_nullable
              as String?,
      oSVersion: freezed == oSVersion
          ? _value.oSVersion
          : oSVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceModel: freezed == deviceModel
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceBrand: freezed == deviceBrand
          ? _value.deviceBrand
          : deviceBrand // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceManufacturer: freezed == deviceManufacturer
          ? _value.deviceManufacturer
          : deviceManufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      sdkType: freezed == sdkType
          ? _value.sdkType
          : sdkType // ignore: cast_nullable_to_non_nullable
              as String?,
      extraData: freezed == extraData
          ? _value._extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      deviceLanguage: freezed == deviceLanguage
          ? _value.deviceLanguage
          : deviceLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudentDeviceCreateImpl extends _StudentDeviceCreate {
  const _$StudentDeviceCreateImpl(
      {@JsonKey(name: 'device_token') required this.deviceToken,
      @JsonKey(name: 'os_type') required this.oSType,
      @JsonKey(name: 'os_version') required this.oSVersion,
      @JsonKey(name: 'device_id') required this.deviceId,
      @JsonKey(name: 'device_name') required this.deviceName,
      @JsonKey(name: 'device_model') required this.deviceModel,
      @JsonKey(name: 'device_brand') required this.deviceBrand,
      @JsonKey(name: 'serial_number') required this.serialNumber,
      @JsonKey(name: 'device_manufacturer') required this.deviceManufacturer,
      @JsonKey(name: 'sdk_type') required this.sdkType,
      @JsonKey(name: 'extra_data')
      required final Map<String, dynamic>? extraData,
      @JsonKey(name: 'device_language') required this.deviceLanguage})
      : _extraData = extraData,
        super._();

  factory _$StudentDeviceCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentDeviceCreateImplFromJson(json);

  /// Device Token
  @override
  @JsonKey(name: 'device_token')
  final String? deviceToken;

  /// Os Type
  @override
  @JsonKey(name: 'os_type')
  final String? oSType;

  /// Os Version
  @override
  @JsonKey(name: 'os_version')
  final String? oSVersion;

  /// Device Id
  @override
  @JsonKey(name: 'device_id')
  final String? deviceId;

  /// Device Name
  @override
  @JsonKey(name: 'device_name')
  final String? deviceName;

  /// Device Model
  @override
  @JsonKey(name: 'device_model')
  final String? deviceModel;

  /// Device Brand
  @override
  @JsonKey(name: 'device_brand')
  final String? deviceBrand;

  /// Serial Number
  @override
  @JsonKey(name: 'serial_number')
  final String? serialNumber;

  /// Device Manufacturer
  @override
  @JsonKey(name: 'device_manufacturer')
  final String? deviceManufacturer;

  /// Sdk Type
  @override
  @JsonKey(name: 'sdk_type')
  final String? sdkType;

  /// Extra Data
  final Map<String, dynamic>? _extraData;

  /// Extra Data
  @override
  @JsonKey(name: 'extra_data')
  Map<String, dynamic>? get extraData {
    final value = _extraData;
    if (value == null) return null;
    if (_extraData is EqualUnmodifiableMapView) return _extraData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Device Language
  @override
  @JsonKey(name: 'device_language')
  final String? deviceLanguage;

  @override
  String toString() {
    return 'StudentDeviceCreate(deviceToken: $deviceToken, oSType: $oSType, oSVersion: $oSVersion, deviceId: $deviceId, deviceName: $deviceName, deviceModel: $deviceModel, deviceBrand: $deviceBrand, serialNumber: $serialNumber, deviceManufacturer: $deviceManufacturer, sdkType: $sdkType, extraData: $extraData, deviceLanguage: $deviceLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentDeviceCreateImpl &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.oSType, oSType) || other.oSType == oSType) &&
            (identical(other.oSVersion, oSVersion) ||
                other.oSVersion == oSVersion) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.deviceModel, deviceModel) ||
                other.deviceModel == deviceModel) &&
            (identical(other.deviceBrand, deviceBrand) ||
                other.deviceBrand == deviceBrand) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.deviceManufacturer, deviceManufacturer) ||
                other.deviceManufacturer == deviceManufacturer) &&
            (identical(other.sdkType, sdkType) || other.sdkType == sdkType) &&
            const DeepCollectionEquality()
                .equals(other._extraData, _extraData) &&
            (identical(other.deviceLanguage, deviceLanguage) ||
                other.deviceLanguage == deviceLanguage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      deviceToken,
      oSType,
      oSVersion,
      deviceId,
      deviceName,
      deviceModel,
      deviceBrand,
      serialNumber,
      deviceManufacturer,
      sdkType,
      const DeepCollectionEquality().hash(_extraData),
      deviceLanguage);

  /// Create a copy of StudentDeviceCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentDeviceCreateImplCopyWith<_$StudentDeviceCreateImpl> get copyWith =>
      __$$StudentDeviceCreateImplCopyWithImpl<_$StudentDeviceCreateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentDeviceCreateImplToJson(
      this,
    );
  }
}

abstract class _StudentDeviceCreate extends StudentDeviceCreate {
  const factory _StudentDeviceCreate(
      {@JsonKey(name: 'device_token') required final String? deviceToken,
      @JsonKey(name: 'os_type') required final String? oSType,
      @JsonKey(name: 'os_version') required final String? oSVersion,
      @JsonKey(name: 'device_id') required final String? deviceId,
      @JsonKey(name: 'device_name') required final String? deviceName,
      @JsonKey(name: 'device_model') required final String? deviceModel,
      @JsonKey(name: 'device_brand') required final String? deviceBrand,
      @JsonKey(name: 'serial_number') required final String? serialNumber,
      @JsonKey(name: 'device_manufacturer')
      required final String? deviceManufacturer,
      @JsonKey(name: 'sdk_type') required final String? sdkType,
      @JsonKey(name: 'extra_data')
      required final Map<String, dynamic>? extraData,
      @JsonKey(name: 'device_language')
      required final String? deviceLanguage}) = _$StudentDeviceCreateImpl;
  const _StudentDeviceCreate._() : super._();

  factory _StudentDeviceCreate.fromJson(Map<String, dynamic> json) =
      _$StudentDeviceCreateImpl.fromJson;

  /// Device Token
  @override
  @JsonKey(name: 'device_token')
  String? get deviceToken;

  /// Os Type
  @override
  @JsonKey(name: 'os_type')
  String? get oSType;

  /// Os Version
  @override
  @JsonKey(name: 'os_version')
  String? get oSVersion;

  /// Device Id
  @override
  @JsonKey(name: 'device_id')
  String? get deviceId;

  /// Device Name
  @override
  @JsonKey(name: 'device_name')
  String? get deviceName;

  /// Device Model
  @override
  @JsonKey(name: 'device_model')
  String? get deviceModel;

  /// Device Brand
  @override
  @JsonKey(name: 'device_brand')
  String? get deviceBrand;

  /// Serial Number
  @override
  @JsonKey(name: 'serial_number')
  String? get serialNumber;

  /// Device Manufacturer
  @override
  @JsonKey(name: 'device_manufacturer')
  String? get deviceManufacturer;

  /// Sdk Type
  @override
  @JsonKey(name: 'sdk_type')
  String? get sdkType;

  /// Extra Data
  @override
  @JsonKey(name: 'extra_data')
  Map<String, dynamic>? get extraData;

  /// Device Language
  @override
  @JsonKey(name: 'device_language')
  String? get deviceLanguage;

  /// Create a copy of StudentDeviceCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentDeviceCreateImplCopyWith<_$StudentDeviceCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
