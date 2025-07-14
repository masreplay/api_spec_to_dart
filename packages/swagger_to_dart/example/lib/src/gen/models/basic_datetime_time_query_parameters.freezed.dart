// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_datetime_time_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BasicDatetimeTimeQueryParameters {
  /// t
  @JsonKey(name: BasicDatetimeTimeQueryParameters.tKey)
  TimeOfDay get t;

  /// Create a copy of BasicDatetimeTimeQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BasicDatetimeTimeQueryParametersCopyWith<BasicDatetimeTimeQueryParameters>
      get copyWith => _$BasicDatetimeTimeQueryParametersCopyWithImpl<
              BasicDatetimeTimeQueryParameters>(
          this as BasicDatetimeTimeQueryParameters, _$identity);

  /// Serializes this BasicDatetimeTimeQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BasicDatetimeTimeQueryParameters &&
            (identical(other.t, t) || other.t == t));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, t);

  @override
  String toString() {
    return 'BasicDatetimeTimeQueryParameters(t: $t)';
  }
}

/// @nodoc
abstract mixin class $BasicDatetimeTimeQueryParametersCopyWith<$Res> {
  factory $BasicDatetimeTimeQueryParametersCopyWith(
          BasicDatetimeTimeQueryParameters value,
          $Res Function(BasicDatetimeTimeQueryParameters) _then) =
      _$BasicDatetimeTimeQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: BasicDatetimeTimeQueryParameters.tKey) TimeOfDay t});
}

/// @nodoc
class _$BasicDatetimeTimeQueryParametersCopyWithImpl<$Res>
    implements $BasicDatetimeTimeQueryParametersCopyWith<$Res> {
  _$BasicDatetimeTimeQueryParametersCopyWithImpl(this._self, this._then);

  final BasicDatetimeTimeQueryParameters _self;
  final $Res Function(BasicDatetimeTimeQueryParameters) _then;

  /// Create a copy of BasicDatetimeTimeQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? t = null,
  }) {
    return _then(_self.copyWith(
      t: null == t
          ? _self.t
          : t // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _BasicDatetimeTimeQueryParameters
    extends BasicDatetimeTimeQueryParameters {
  const _BasicDatetimeTimeQueryParameters(
      {@JsonKey(name: BasicDatetimeTimeQueryParameters.tKey) required this.t})
      : super._();
  factory _BasicDatetimeTimeQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$BasicDatetimeTimeQueryParametersFromJson(json);

  /// t
  @override
  @JsonKey(name: BasicDatetimeTimeQueryParameters.tKey)
  final TimeOfDay t;

  /// Create a copy of BasicDatetimeTimeQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BasicDatetimeTimeQueryParametersCopyWith<_BasicDatetimeTimeQueryParameters>
      get copyWith => __$BasicDatetimeTimeQueryParametersCopyWithImpl<
          _BasicDatetimeTimeQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BasicDatetimeTimeQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BasicDatetimeTimeQueryParameters &&
            (identical(other.t, t) || other.t == t));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, t);

  @override
  String toString() {
    return 'BasicDatetimeTimeQueryParameters(t: $t)';
  }
}

/// @nodoc
abstract mixin class _$BasicDatetimeTimeQueryParametersCopyWith<$Res>
    implements $BasicDatetimeTimeQueryParametersCopyWith<$Res> {
  factory _$BasicDatetimeTimeQueryParametersCopyWith(
          _BasicDatetimeTimeQueryParameters value,
          $Res Function(_BasicDatetimeTimeQueryParameters) _then) =
      __$BasicDatetimeTimeQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BasicDatetimeTimeQueryParameters.tKey) TimeOfDay t});
}

/// @nodoc
class __$BasicDatetimeTimeQueryParametersCopyWithImpl<$Res>
    implements _$BasicDatetimeTimeQueryParametersCopyWith<$Res> {
  __$BasicDatetimeTimeQueryParametersCopyWithImpl(this._self, this._then);

  final _BasicDatetimeTimeQueryParameters _self;
  final $Res Function(_BasicDatetimeTimeQueryParameters) _then;

  /// Create a copy of BasicDatetimeTimeQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? t = null,
  }) {
    return _then(_BasicDatetimeTimeQueryParameters(
      t: null == t
          ? _self.t
          : t // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}
