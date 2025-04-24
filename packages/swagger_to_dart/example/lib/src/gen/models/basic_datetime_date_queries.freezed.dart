// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_datetime_date_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BasicDatetimeDateQueries {
  /// d
  @JsonKey(name: BasicDatetimeDateQueries.dKey)
  DateTime get d;

  /// Create a copy of BasicDatetimeDateQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BasicDatetimeDateQueriesCopyWith<BasicDatetimeDateQueries> get copyWith =>
      _$BasicDatetimeDateQueriesCopyWithImpl<BasicDatetimeDateQueries>(
          this as BasicDatetimeDateQueries, _$identity);

  /// Serializes this BasicDatetimeDateQueries to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BasicDatetimeDateQueries &&
            (identical(other.d, d) || other.d == d));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, d);

  @override
  String toString() {
    return 'BasicDatetimeDateQueries(d: $d)';
  }
}

/// @nodoc
abstract mixin class $BasicDatetimeDateQueriesCopyWith<$Res> {
  factory $BasicDatetimeDateQueriesCopyWith(BasicDatetimeDateQueries value,
          $Res Function(BasicDatetimeDateQueries) _then) =
      _$BasicDatetimeDateQueriesCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: BasicDatetimeDateQueries.dKey) DateTime d});
}

/// @nodoc
class _$BasicDatetimeDateQueriesCopyWithImpl<$Res>
    implements $BasicDatetimeDateQueriesCopyWith<$Res> {
  _$BasicDatetimeDateQueriesCopyWithImpl(this._self, this._then);

  final BasicDatetimeDateQueries _self;
  final $Res Function(BasicDatetimeDateQueries) _then;

  /// Create a copy of BasicDatetimeDateQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? d = null,
  }) {
    return _then(_self.copyWith(
      d: null == d
          ? _self.d
          : d // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _BasicDatetimeDateQueries extends BasicDatetimeDateQueries {
  const _BasicDatetimeDateQueries(
      {@JsonKey(name: BasicDatetimeDateQueries.dKey) required this.d})
      : super._();
  factory _BasicDatetimeDateQueries.fromJson(Map<String, dynamic> json) =>
      _$BasicDatetimeDateQueriesFromJson(json);

  /// d
  @override
  @JsonKey(name: BasicDatetimeDateQueries.dKey)
  final DateTime d;

  /// Create a copy of BasicDatetimeDateQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BasicDatetimeDateQueriesCopyWith<_BasicDatetimeDateQueries> get copyWith =>
      __$BasicDatetimeDateQueriesCopyWithImpl<_BasicDatetimeDateQueries>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BasicDatetimeDateQueriesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BasicDatetimeDateQueries &&
            (identical(other.d, d) || other.d == d));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, d);

  @override
  String toString() {
    return 'BasicDatetimeDateQueries(d: $d)';
  }
}

/// @nodoc
abstract mixin class _$BasicDatetimeDateQueriesCopyWith<$Res>
    implements $BasicDatetimeDateQueriesCopyWith<$Res> {
  factory _$BasicDatetimeDateQueriesCopyWith(_BasicDatetimeDateQueries value,
          $Res Function(_BasicDatetimeDateQueries) _then) =
      __$BasicDatetimeDateQueriesCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: BasicDatetimeDateQueries.dKey) DateTime d});
}

/// @nodoc
class __$BasicDatetimeDateQueriesCopyWithImpl<$Res>
    implements _$BasicDatetimeDateQueriesCopyWith<$Res> {
  __$BasicDatetimeDateQueriesCopyWithImpl(this._self, this._then);

  final _BasicDatetimeDateQueries _self;
  final $Res Function(_BasicDatetimeDateQueries) _then;

  /// Create a copy of BasicDatetimeDateQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? d = null,
  }) {
    return _then(_BasicDatetimeDateQueries(
      d: null == d
          ? _self.d
          : d // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
