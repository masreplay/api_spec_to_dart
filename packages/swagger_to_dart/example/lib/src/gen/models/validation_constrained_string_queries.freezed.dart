// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_constrained_string_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidationConstrainedStringQueries {
  /// value, String between 3-50 chars, alphanumeric with hyphens and underscores
  @JsonKey(name: ValidationConstrainedStringQueries.valueKey)
  String get value;

  /// Create a copy of ValidationConstrainedStringQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValidationConstrainedStringQueriesCopyWith<
          ValidationConstrainedStringQueries>
      get copyWith => _$ValidationConstrainedStringQueriesCopyWithImpl<
              ValidationConstrainedStringQueries>(
          this as ValidationConstrainedStringQueries, _$identity);

  /// Serializes this ValidationConstrainedStringQueries to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidationConstrainedStringQueries &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ValidationConstrainedStringQueries(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ValidationConstrainedStringQueriesCopyWith<$Res> {
  factory $ValidationConstrainedStringQueriesCopyWith(
          ValidationConstrainedStringQueries value,
          $Res Function(ValidationConstrainedStringQueries) _then) =
      _$ValidationConstrainedStringQueriesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ValidationConstrainedStringQueries.valueKey)
      String value});
}

/// @nodoc
class _$ValidationConstrainedStringQueriesCopyWithImpl<$Res>
    implements $ValidationConstrainedStringQueriesCopyWith<$Res> {
  _$ValidationConstrainedStringQueriesCopyWithImpl(this._self, this._then);

  final ValidationConstrainedStringQueries _self;
  final $Res Function(ValidationConstrainedStringQueries) _then;

  /// Create a copy of ValidationConstrainedStringQueries
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
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _ValidationConstrainedStringQueries
    extends ValidationConstrainedStringQueries {
  const _ValidationConstrainedStringQueries(
      {@JsonKey(name: ValidationConstrainedStringQueries.valueKey)
      required this.value})
      : super._();
  factory _ValidationConstrainedStringQueries.fromJson(
          Map<String, dynamic> json) =>
      _$ValidationConstrainedStringQueriesFromJson(json);

  /// value, String between 3-50 chars, alphanumeric with hyphens and underscores
  @override
  @JsonKey(name: ValidationConstrainedStringQueries.valueKey)
  final String value;

  /// Create a copy of ValidationConstrainedStringQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValidationConstrainedStringQueriesCopyWith<
          _ValidationConstrainedStringQueries>
      get copyWith => __$ValidationConstrainedStringQueriesCopyWithImpl<
          _ValidationConstrainedStringQueries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ValidationConstrainedStringQueriesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValidationConstrainedStringQueries &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ValidationConstrainedStringQueries(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ValidationConstrainedStringQueriesCopyWith<$Res>
    implements $ValidationConstrainedStringQueriesCopyWith<$Res> {
  factory _$ValidationConstrainedStringQueriesCopyWith(
          _ValidationConstrainedStringQueries value,
          $Res Function(_ValidationConstrainedStringQueries) _then) =
      __$ValidationConstrainedStringQueriesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ValidationConstrainedStringQueries.valueKey)
      String value});
}

/// @nodoc
class __$ValidationConstrainedStringQueriesCopyWithImpl<$Res>
    implements _$ValidationConstrainedStringQueriesCopyWith<$Res> {
  __$ValidationConstrainedStringQueriesCopyWithImpl(this._self, this._then);

  final _ValidationConstrainedStringQueries _self;
  final $Res Function(_ValidationConstrainedStringQueries) _then;

  /// Create a copy of ValidationConstrainedStringQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_ValidationConstrainedStringQueries(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
