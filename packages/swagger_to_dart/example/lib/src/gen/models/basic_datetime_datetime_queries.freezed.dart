// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_datetime_datetime_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BasicDatetimeDatetimeQueries {
  /// dt
  @JsonKey(name: BasicDatetimeDatetimeQueries.dtKey)
  DateTime get dt;

  /// Create a copy of BasicDatetimeDatetimeQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BasicDatetimeDatetimeQueriesCopyWith<BasicDatetimeDatetimeQueries>
      get copyWith => _$BasicDatetimeDatetimeQueriesCopyWithImpl<
              BasicDatetimeDatetimeQueries>(
          this as BasicDatetimeDatetimeQueries, _$identity);

  /// Serializes this BasicDatetimeDatetimeQueries to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BasicDatetimeDatetimeQueries &&
            (identical(other.dt, dt) || other.dt == dt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dt);

  @override
  String toString() {
    return 'BasicDatetimeDatetimeQueries(dt: $dt)';
  }
}

/// @nodoc
abstract mixin class $BasicDatetimeDatetimeQueriesCopyWith<$Res> {
  factory $BasicDatetimeDatetimeQueriesCopyWith(
          BasicDatetimeDatetimeQueries value,
          $Res Function(BasicDatetimeDatetimeQueries) _then) =
      _$BasicDatetimeDatetimeQueriesCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: BasicDatetimeDatetimeQueries.dtKey) DateTime dt});
}

/// @nodoc
class _$BasicDatetimeDatetimeQueriesCopyWithImpl<$Res>
    implements $BasicDatetimeDatetimeQueriesCopyWith<$Res> {
  _$BasicDatetimeDatetimeQueriesCopyWithImpl(this._self, this._then);

  final BasicDatetimeDatetimeQueries _self;
  final $Res Function(BasicDatetimeDatetimeQueries) _then;

  /// Create a copy of BasicDatetimeDatetimeQueries
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

@JsonSerializable(converters: convertors)
class _BasicDatetimeDatetimeQueries extends BasicDatetimeDatetimeQueries {
  const _BasicDatetimeDatetimeQueries(
      {@JsonKey(name: BasicDatetimeDatetimeQueries.dtKey) required this.dt})
      : super._();
  factory _BasicDatetimeDatetimeQueries.fromJson(Map<String, dynamic> json) =>
      _$BasicDatetimeDatetimeQueriesFromJson(json);

  /// dt
  @override
  @JsonKey(name: BasicDatetimeDatetimeQueries.dtKey)
  final DateTime dt;

  /// Create a copy of BasicDatetimeDatetimeQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BasicDatetimeDatetimeQueriesCopyWith<_BasicDatetimeDatetimeQueries>
      get copyWith => __$BasicDatetimeDatetimeQueriesCopyWithImpl<
          _BasicDatetimeDatetimeQueries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BasicDatetimeDatetimeQueriesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BasicDatetimeDatetimeQueries &&
            (identical(other.dt, dt) || other.dt == dt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dt);

  @override
  String toString() {
    return 'BasicDatetimeDatetimeQueries(dt: $dt)';
  }
}

/// @nodoc
abstract mixin class _$BasicDatetimeDatetimeQueriesCopyWith<$Res>
    implements $BasicDatetimeDatetimeQueriesCopyWith<$Res> {
  factory _$BasicDatetimeDatetimeQueriesCopyWith(
          _BasicDatetimeDatetimeQueries value,
          $Res Function(_BasicDatetimeDatetimeQueries) _then) =
      __$BasicDatetimeDatetimeQueriesCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: BasicDatetimeDatetimeQueries.dtKey) DateTime dt});
}

/// @nodoc
class __$BasicDatetimeDatetimeQueriesCopyWithImpl<$Res>
    implements _$BasicDatetimeDatetimeQueriesCopyWith<$Res> {
  __$BasicDatetimeDatetimeQueriesCopyWithImpl(this._self, this._then);

  final _BasicDatetimeDatetimeQueries _self;
  final $Res Function(_BasicDatetimeDatetimeQueries) _then;

  /// Create a copy of BasicDatetimeDatetimeQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dt = null,
  }) {
    return _then(_BasicDatetimeDatetimeQueries(
      dt: null == dt
          ? _self.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
