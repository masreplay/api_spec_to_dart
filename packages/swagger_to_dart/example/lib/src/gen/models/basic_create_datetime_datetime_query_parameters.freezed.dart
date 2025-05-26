// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_create_datetime_datetime_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BasicCreateDatetimeDatetimeQueryParameters {
  /// dt
  @JsonKey(name: BasicCreateDatetimeDatetimeQueryParameters.dtKey)
  DateTime get dt;

  /// Create a copy of BasicCreateDatetimeDatetimeQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BasicCreateDatetimeDatetimeQueryParametersCopyWith<
    BasicCreateDatetimeDatetimeQueryParameters
  >
  get copyWith => _$BasicCreateDatetimeDatetimeQueryParametersCopyWithImpl<
    BasicCreateDatetimeDatetimeQueryParameters
  >(this as BasicCreateDatetimeDatetimeQueryParameters, _$identity);

  /// Serializes this BasicCreateDatetimeDatetimeQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BasicCreateDatetimeDatetimeQueryParameters &&
            (identical(other.dt, dt) || other.dt == dt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dt);

  @override
  String toString() {
    return 'BasicCreateDatetimeDatetimeQueryParameters(dt: $dt)';
  }
}

/// @nodoc
abstract mixin class $BasicCreateDatetimeDatetimeQueryParametersCopyWith<$Res> {
  factory $BasicCreateDatetimeDatetimeQueryParametersCopyWith(
    BasicCreateDatetimeDatetimeQueryParameters value,
    $Res Function(BasicCreateDatetimeDatetimeQueryParameters) _then,
  ) = _$BasicCreateDatetimeDatetimeQueryParametersCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: BasicCreateDatetimeDatetimeQueryParameters.dtKey)
    DateTime dt,
  });
}

/// @nodoc
class _$BasicCreateDatetimeDatetimeQueryParametersCopyWithImpl<$Res>
    implements $BasicCreateDatetimeDatetimeQueryParametersCopyWith<$Res> {
  _$BasicCreateDatetimeDatetimeQueryParametersCopyWithImpl(
    this._self,
    this._then,
  );

  final BasicCreateDatetimeDatetimeQueryParameters _self;
  final $Res Function(BasicCreateDatetimeDatetimeQueryParameters) _then;

  /// Create a copy of BasicCreateDatetimeDatetimeQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? dt = null}) {
    return _then(
      _self.copyWith(
        dt:
            null == dt
                ? _self.dt
                : dt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc

@jsonSerializable
class _BasicCreateDatetimeDatetimeQueryParameters
    extends BasicCreateDatetimeDatetimeQueryParameters {
  const _BasicCreateDatetimeDatetimeQueryParameters({
    @JsonKey(name: BasicCreateDatetimeDatetimeQueryParameters.dtKey)
    required this.dt,
  }) : super._();
  factory _BasicCreateDatetimeDatetimeQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$BasicCreateDatetimeDatetimeQueryParametersFromJson(json);

  /// dt
  @override
  @JsonKey(name: BasicCreateDatetimeDatetimeQueryParameters.dtKey)
  final DateTime dt;

  /// Create a copy of BasicCreateDatetimeDatetimeQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BasicCreateDatetimeDatetimeQueryParametersCopyWith<
    _BasicCreateDatetimeDatetimeQueryParameters
  >
  get copyWith => __$BasicCreateDatetimeDatetimeQueryParametersCopyWithImpl<
    _BasicCreateDatetimeDatetimeQueryParameters
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BasicCreateDatetimeDatetimeQueryParametersToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BasicCreateDatetimeDatetimeQueryParameters &&
            (identical(other.dt, dt) || other.dt == dt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dt);

  @override
  String toString() {
    return 'BasicCreateDatetimeDatetimeQueryParameters(dt: $dt)';
  }
}

/// @nodoc
abstract mixin class _$BasicCreateDatetimeDatetimeQueryParametersCopyWith<$Res>
    implements $BasicCreateDatetimeDatetimeQueryParametersCopyWith<$Res> {
  factory _$BasicCreateDatetimeDatetimeQueryParametersCopyWith(
    _BasicCreateDatetimeDatetimeQueryParameters value,
    $Res Function(_BasicCreateDatetimeDatetimeQueryParameters) _then,
  ) = __$BasicCreateDatetimeDatetimeQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: BasicCreateDatetimeDatetimeQueryParameters.dtKey)
    DateTime dt,
  });
}

/// @nodoc
class __$BasicCreateDatetimeDatetimeQueryParametersCopyWithImpl<$Res>
    implements _$BasicCreateDatetimeDatetimeQueryParametersCopyWith<$Res> {
  __$BasicCreateDatetimeDatetimeQueryParametersCopyWithImpl(
    this._self,
    this._then,
  );

  final _BasicCreateDatetimeDatetimeQueryParameters _self;
  final $Res Function(_BasicCreateDatetimeDatetimeQueryParameters) _then;

  /// Create a copy of BasicCreateDatetimeDatetimeQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? dt = null}) {
    return _then(
      _BasicCreateDatetimeDatetimeQueryParameters(
        dt:
            null == dt
                ? _self.dt
                : dt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}
