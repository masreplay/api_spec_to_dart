// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_datetime_datetime_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BasicDatetimeDatetimeQueryParameters {
  /// dt
  @JsonKey(name: BasicDatetimeDatetimeQueryParameters.dtKey)
  DateTime get dt;

  /// Create a copy of BasicDatetimeDatetimeQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BasicDatetimeDatetimeQueryParametersCopyWith<
          BasicDatetimeDatetimeQueryParameters>
      get copyWith => _$BasicDatetimeDatetimeQueryParametersCopyWithImpl<
              BasicDatetimeDatetimeQueryParameters>(
          this as BasicDatetimeDatetimeQueryParameters, _$identity);

  /// Serializes this BasicDatetimeDatetimeQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BasicDatetimeDatetimeQueryParameters &&
            (identical(other.dt, dt) || other.dt == dt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dt);

  @override
  String toString() {
    return 'BasicDatetimeDatetimeQueryParameters(dt: $dt)';
  }
}

/// @nodoc
abstract mixin class $BasicDatetimeDatetimeQueryParametersCopyWith<$Res> {
  factory $BasicDatetimeDatetimeQueryParametersCopyWith(
          BasicDatetimeDatetimeQueryParameters value,
          $Res Function(BasicDatetimeDatetimeQueryParameters) _then) =
      _$BasicDatetimeDatetimeQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: BasicDatetimeDatetimeQueryParameters.dtKey) DateTime dt});
}

/// @nodoc
class _$BasicDatetimeDatetimeQueryParametersCopyWithImpl<$Res>
    implements $BasicDatetimeDatetimeQueryParametersCopyWith<$Res> {
  _$BasicDatetimeDatetimeQueryParametersCopyWithImpl(this._self, this._then);

  final BasicDatetimeDatetimeQueryParameters _self;
  final $Res Function(BasicDatetimeDatetimeQueryParameters) _then;

  /// Create a copy of BasicDatetimeDatetimeQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
  }) {
    return _then(_self.copyWith(
      dt: null == dt
          ? _self.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _BasicDatetimeDatetimeQueryParameters
    extends BasicDatetimeDatetimeQueryParameters {
  const _BasicDatetimeDatetimeQueryParameters(
      {@JsonKey(name: BasicDatetimeDatetimeQueryParameters.dtKey)
      required this.dt})
      : super._();
  factory _BasicDatetimeDatetimeQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$BasicDatetimeDatetimeQueryParametersFromJson(json);

  /// dt
  @override
  @JsonKey(name: BasicDatetimeDatetimeQueryParameters.dtKey)
  final DateTime dt;

  /// Create a copy of BasicDatetimeDatetimeQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BasicDatetimeDatetimeQueryParametersCopyWith<
          _BasicDatetimeDatetimeQueryParameters>
      get copyWith => __$BasicDatetimeDatetimeQueryParametersCopyWithImpl<
          _BasicDatetimeDatetimeQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BasicDatetimeDatetimeQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BasicDatetimeDatetimeQueryParameters &&
            (identical(other.dt, dt) || other.dt == dt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dt);

  @override
  String toString() {
    return 'BasicDatetimeDatetimeQueryParameters(dt: $dt)';
  }
}

/// @nodoc
abstract mixin class _$BasicDatetimeDatetimeQueryParametersCopyWith<$Res>
    implements $BasicDatetimeDatetimeQueryParametersCopyWith<$Res> {
  factory _$BasicDatetimeDatetimeQueryParametersCopyWith(
          _BasicDatetimeDatetimeQueryParameters value,
          $Res Function(_BasicDatetimeDatetimeQueryParameters) _then) =
      __$BasicDatetimeDatetimeQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BasicDatetimeDatetimeQueryParameters.dtKey) DateTime dt});
}

/// @nodoc
class __$BasicDatetimeDatetimeQueryParametersCopyWithImpl<$Res>
    implements _$BasicDatetimeDatetimeQueryParametersCopyWith<$Res> {
  __$BasicDatetimeDatetimeQueryParametersCopyWithImpl(this._self, this._then);

  final _BasicDatetimeDatetimeQueryParameters _self;
  final $Res Function(_BasicDatetimeDatetimeQueryParameters) _then;

  /// Create a copy of BasicDatetimeDatetimeQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dt = null,
  }) {
    return _then(_BasicDatetimeDatetimeQueryParameters(
      dt: null == dt
          ? _self.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}
