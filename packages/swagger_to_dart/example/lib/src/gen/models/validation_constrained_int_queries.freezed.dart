// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_constrained_int_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidationConstrainedIntQueries {
  /// value, Integer between 0 and 99
  @JsonKey(name: ValidationConstrainedIntQueries.valueKey)
  int get value;

  /// Create a copy of ValidationConstrainedIntQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValidationConstrainedIntQueriesCopyWith<ValidationConstrainedIntQueries>
      get copyWith => _$ValidationConstrainedIntQueriesCopyWithImpl<
              ValidationConstrainedIntQueries>(
          this as ValidationConstrainedIntQueries, _$identity);

  /// Serializes this ValidationConstrainedIntQueries to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidationConstrainedIntQueries &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ValidationConstrainedIntQueries(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ValidationConstrainedIntQueriesCopyWith<$Res> {
  factory $ValidationConstrainedIntQueriesCopyWith(
          ValidationConstrainedIntQueries value,
          $Res Function(ValidationConstrainedIntQueries) _then) =
      _$ValidationConstrainedIntQueriesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ValidationConstrainedIntQueries.valueKey) int value});
}

/// @nodoc
class _$ValidationConstrainedIntQueriesCopyWithImpl<$Res>
    implements $ValidationConstrainedIntQueriesCopyWith<$Res> {
  _$ValidationConstrainedIntQueriesCopyWithImpl(this._self, this._then);

  final ValidationConstrainedIntQueries _self;
  final $Res Function(ValidationConstrainedIntQueries) _then;

  /// Create a copy of ValidationConstrainedIntQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _ValidationConstrainedIntQueries extends ValidationConstrainedIntQueries {
  const _ValidationConstrainedIntQueries(
      {@JsonKey(name: ValidationConstrainedIntQueries.valueKey)
      required this.value})
      : super._();
  factory _ValidationConstrainedIntQueries.fromJson(
          Map<String, dynamic> json) =>
      _$ValidationConstrainedIntQueriesFromJson(json);

  /// value, Integer between 0 and 99
  @override
  @JsonKey(name: ValidationConstrainedIntQueries.valueKey)
  final int value;

  /// Create a copy of ValidationConstrainedIntQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValidationConstrainedIntQueriesCopyWith<_ValidationConstrainedIntQueries>
      get copyWith => __$ValidationConstrainedIntQueriesCopyWithImpl<
          _ValidationConstrainedIntQueries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ValidationConstrainedIntQueriesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValidationConstrainedIntQueries &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ValidationConstrainedIntQueries(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ValidationConstrainedIntQueriesCopyWith<$Res>
    implements $ValidationConstrainedIntQueriesCopyWith<$Res> {
  factory _$ValidationConstrainedIntQueriesCopyWith(
          _ValidationConstrainedIntQueries value,
          $Res Function(_ValidationConstrainedIntQueries) _then) =
      __$ValidationConstrainedIntQueriesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ValidationConstrainedIntQueries.valueKey) int value});
}

/// @nodoc
class __$ValidationConstrainedIntQueriesCopyWithImpl<$Res>
    implements _$ValidationConstrainedIntQueriesCopyWith<$Res> {
  __$ValidationConstrainedIntQueriesCopyWithImpl(this._self, this._then);

  final _ValidationConstrainedIntQueries _self;
  final $Res Function(_ValidationConstrainedIntQueries) _then;

  /// Create a copy of ValidationConstrainedIntQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_ValidationConstrainedIntQueries(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
