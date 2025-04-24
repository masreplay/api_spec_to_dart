// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_basic_boolean_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BasicBasicBooleanQueries {
  /// flag
  @JsonKey(name: BasicBasicBooleanQueries.flagKey)
  bool get flag;

  /// Create a copy of BasicBasicBooleanQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BasicBasicBooleanQueriesCopyWith<BasicBasicBooleanQueries> get copyWith =>
      _$BasicBasicBooleanQueriesCopyWithImpl<BasicBasicBooleanQueries>(
          this as BasicBasicBooleanQueries, _$identity);

  /// Serializes this BasicBasicBooleanQueries to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BasicBasicBooleanQueries &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, flag);

  @override
  String toString() {
    return 'BasicBasicBooleanQueries(flag: $flag)';
  }
}

/// @nodoc
abstract mixin class $BasicBasicBooleanQueriesCopyWith<$Res> {
  factory $BasicBasicBooleanQueriesCopyWith(BasicBasicBooleanQueries value,
          $Res Function(BasicBasicBooleanQueries) _then) =
      _$BasicBasicBooleanQueriesCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: BasicBasicBooleanQueries.flagKey) bool flag});
}

/// @nodoc
class _$BasicBasicBooleanQueriesCopyWithImpl<$Res>
    implements $BasicBasicBooleanQueriesCopyWith<$Res> {
  _$BasicBasicBooleanQueriesCopyWithImpl(this._self, this._then);

  final BasicBasicBooleanQueries _self;
  final $Res Function(BasicBasicBooleanQueries) _then;

  /// Create a copy of BasicBasicBooleanQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flag = null,
  }) {
    return _then(_self.copyWith(
      flag: null == flag
          ? _self.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _BasicBasicBooleanQueries extends BasicBasicBooleanQueries {
  const _BasicBasicBooleanQueries(
      {@JsonKey(name: BasicBasicBooleanQueries.flagKey) this.flag = false})
      : super._();
  factory _BasicBasicBooleanQueries.fromJson(Map<String, dynamic> json) =>
      _$BasicBasicBooleanQueriesFromJson(json);

  /// flag
  @override
  @JsonKey(name: BasicBasicBooleanQueries.flagKey)
  final bool flag;

  /// Create a copy of BasicBasicBooleanQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BasicBasicBooleanQueriesCopyWith<_BasicBasicBooleanQueries> get copyWith =>
      __$BasicBasicBooleanQueriesCopyWithImpl<_BasicBasicBooleanQueries>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BasicBasicBooleanQueriesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BasicBasicBooleanQueries &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, flag);

  @override
  String toString() {
    return 'BasicBasicBooleanQueries(flag: $flag)';
  }
}

/// @nodoc
abstract mixin class _$BasicBasicBooleanQueriesCopyWith<$Res>
    implements $BasicBasicBooleanQueriesCopyWith<$Res> {
  factory _$BasicBasicBooleanQueriesCopyWith(_BasicBasicBooleanQueries value,
          $Res Function(_BasicBasicBooleanQueries) _then) =
      __$BasicBasicBooleanQueriesCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: BasicBasicBooleanQueries.flagKey) bool flag});
}

/// @nodoc
class __$BasicBasicBooleanQueriesCopyWithImpl<$Res>
    implements _$BasicBasicBooleanQueriesCopyWith<$Res> {
  __$BasicBasicBooleanQueriesCopyWithImpl(this._self, this._then);

  final _BasicBasicBooleanQueries _self;
  final $Res Function(_BasicBasicBooleanQueries) _then;

  /// Create a copy of BasicBasicBooleanQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? flag = null,
  }) {
    return _then(_BasicBasicBooleanQueries(
      flag: null == flag
          ? _self.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
