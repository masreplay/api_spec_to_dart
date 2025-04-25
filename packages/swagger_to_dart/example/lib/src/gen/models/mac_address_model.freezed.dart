// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mac_address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MACAddressModel {
  String get macAddress;

  /// Create a copy of MACAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MACAddressModelCopyWith<MACAddressModel> get copyWith =>
      _$MACAddressModelCopyWithImpl<MACAddressModel>(
          this as MACAddressModel, _$identity);

  /// Serializes this MACAddressModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MACAddressModel &&
            (identical(other.macAddress, macAddress) ||
                other.macAddress == macAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, macAddress);

  @override
  String toString() {
    return 'MACAddressModel(macAddress: $macAddress)';
  }
}

/// @nodoc
abstract mixin class $MACAddressModelCopyWith<$Res> {
  factory $MACAddressModelCopyWith(
          MACAddressModel value, $Res Function(MACAddressModel) _then) =
      _$MACAddressModelCopyWithImpl;
  @useResult
  $Res call({String macAddress});
}

/// @nodoc
class _$MACAddressModelCopyWithImpl<$Res>
    implements $MACAddressModelCopyWith<$Res> {
  _$MACAddressModelCopyWithImpl(this._self, this._then);

  final MACAddressModel _self;
  final $Res Function(MACAddressModel) _then;

  /// Create a copy of MACAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? macAddress = null,
  }) {
    return _then(_self.copyWith(
      macAddress: null == macAddress
          ? _self.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: Convertors.convertors)
class _MACAddressModel implements MACAddressModel {
  const _MACAddressModel({required this.macAddress});
  factory _MACAddressModel.fromJson(Map<String, dynamic> json) =>
      _$MACAddressModelFromJson(json);

  @override
  final String macAddress;

  /// Create a copy of MACAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MACAddressModelCopyWith<_MACAddressModel> get copyWith =>
      __$MACAddressModelCopyWithImpl<_MACAddressModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MACAddressModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MACAddressModel &&
            (identical(other.macAddress, macAddress) ||
                other.macAddress == macAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, macAddress);

  @override
  String toString() {
    return 'MACAddressModel(macAddress: $macAddress)';
  }
}

/// @nodoc
abstract mixin class _$MACAddressModelCopyWith<$Res>
    implements $MACAddressModelCopyWith<$Res> {
  factory _$MACAddressModelCopyWith(
          _MACAddressModel value, $Res Function(_MACAddressModel) _then) =
      __$MACAddressModelCopyWithImpl;
  @override
  @useResult
  $Res call({String macAddress});
}

/// @nodoc
class __$MACAddressModelCopyWithImpl<$Res>
    implements _$MACAddressModelCopyWith<$Res> {
  __$MACAddressModelCopyWithImpl(this._self, this._then);

  final _MACAddressModel _self;
  final $Res Function(_MACAddressModel) _then;

  /// Create a copy of MACAddressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? macAddress = null,
  }) {
    return _then(_MACAddressModel(
      macAddress: null == macAddress
          ? _self.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
