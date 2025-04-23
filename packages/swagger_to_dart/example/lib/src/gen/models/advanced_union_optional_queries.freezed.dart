// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_union_optional_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedUnionOptionalQueries {
  /// Value
  @JsonKey(name: AdvancedUnionOptionalQueries.valueKey)
  String? get value;

  /// Create a copy of AdvancedUnionOptionalQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedUnionOptionalQueriesCopyWith<AdvancedUnionOptionalQueries>
      get copyWith => _$AdvancedUnionOptionalQueriesCopyWithImpl<
              AdvancedUnionOptionalQueries>(
          this as AdvancedUnionOptionalQueries, _$identity);

  /// Serializes this AdvancedUnionOptionalQueries to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedUnionOptionalQueries &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'AdvancedUnionOptionalQueries(value: $value)';
  }
}

/// @nodoc
abstract mixin class $AdvancedUnionOptionalQueriesCopyWith<$Res> {
  factory $AdvancedUnionOptionalQueriesCopyWith(
          AdvancedUnionOptionalQueries value,
          $Res Function(AdvancedUnionOptionalQueries) _then) =
      _$AdvancedUnionOptionalQueriesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedUnionOptionalQueries.valueKey) String? value});
}

/// @nodoc
class _$AdvancedUnionOptionalQueriesCopyWithImpl<$Res>
    implements $AdvancedUnionOptionalQueriesCopyWith<$Res> {
  _$AdvancedUnionOptionalQueriesCopyWithImpl(this._self, this._then);

  final AdvancedUnionOptionalQueries _self;
  final $Res Function(AdvancedUnionOptionalQueries) _then;

  /// Create a copy of AdvancedUnionOptionalQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_self.copyWith(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _AdvancedUnionOptionalQueries extends AdvancedUnionOptionalQueries {
  const _AdvancedUnionOptionalQueries(
      {@JsonKey(name: AdvancedUnionOptionalQueries.valueKey)
      required this.value})
      : super._();
  factory _AdvancedUnionOptionalQueries.fromJson(Map<String, dynamic> json) =>
      _$AdvancedUnionOptionalQueriesFromJson(json);

  /// Value
  @override
  @JsonKey(name: AdvancedUnionOptionalQueries.valueKey)
  final String? value;

  /// Create a copy of AdvancedUnionOptionalQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedUnionOptionalQueriesCopyWith<_AdvancedUnionOptionalQueries>
      get copyWith => __$AdvancedUnionOptionalQueriesCopyWithImpl<
          _AdvancedUnionOptionalQueries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedUnionOptionalQueriesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedUnionOptionalQueries &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'AdvancedUnionOptionalQueries(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedUnionOptionalQueriesCopyWith<$Res>
    implements $AdvancedUnionOptionalQueriesCopyWith<$Res> {
  factory _$AdvancedUnionOptionalQueriesCopyWith(
          _AdvancedUnionOptionalQueries value,
          $Res Function(_AdvancedUnionOptionalQueries) _then) =
      __$AdvancedUnionOptionalQueriesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedUnionOptionalQueries.valueKey) String? value});
}

/// @nodoc
class __$AdvancedUnionOptionalQueriesCopyWithImpl<$Res>
    implements _$AdvancedUnionOptionalQueriesCopyWith<$Res> {
  __$AdvancedUnionOptionalQueriesCopyWithImpl(this._self, this._then);

  final _AdvancedUnionOptionalQueries _self;
  final $Res Function(_AdvancedUnionOptionalQueries) _then;

  /// Create a copy of AdvancedUnionOptionalQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_AdvancedUnionOptionalQueries(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
