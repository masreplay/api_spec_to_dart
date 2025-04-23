// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_special_literal_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedSpecialLiteralQueries {
  /// mode
  @JsonKey(name: AdvancedSpecialLiteralQueries.modeKey)
  String get mode;

  /// Create a copy of AdvancedSpecialLiteralQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedSpecialLiteralQueriesCopyWith<AdvancedSpecialLiteralQueries>
      get copyWith => _$AdvancedSpecialLiteralQueriesCopyWithImpl<
              AdvancedSpecialLiteralQueries>(
          this as AdvancedSpecialLiteralQueries, _$identity);

  /// Serializes this AdvancedSpecialLiteralQueries to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedSpecialLiteralQueries &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @override
  String toString() {
    return 'AdvancedSpecialLiteralQueries(mode: $mode)';
  }
}

/// @nodoc
abstract mixin class $AdvancedSpecialLiteralQueriesCopyWith<$Res> {
  factory $AdvancedSpecialLiteralQueriesCopyWith(
          AdvancedSpecialLiteralQueries value,
          $Res Function(AdvancedSpecialLiteralQueries) _then) =
      _$AdvancedSpecialLiteralQueriesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedSpecialLiteralQueries.modeKey) String mode});
}

/// @nodoc
class _$AdvancedSpecialLiteralQueriesCopyWithImpl<$Res>
    implements $AdvancedSpecialLiteralQueriesCopyWith<$Res> {
  _$AdvancedSpecialLiteralQueriesCopyWithImpl(this._self, this._then);

  final AdvancedSpecialLiteralQueries _self;
  final $Res Function(AdvancedSpecialLiteralQueries) _then;

  /// Create a copy of AdvancedSpecialLiteralQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_self.copyWith(
      mode: null == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _AdvancedSpecialLiteralQueries extends AdvancedSpecialLiteralQueries {
  const _AdvancedSpecialLiteralQueries(
      {@JsonKey(name: AdvancedSpecialLiteralQueries.modeKey)
      this.mode = 'system'})
      : super._();
  factory _AdvancedSpecialLiteralQueries.fromJson(Map<String, dynamic> json) =>
      _$AdvancedSpecialLiteralQueriesFromJson(json);

  /// mode
  @override
  @JsonKey(name: AdvancedSpecialLiteralQueries.modeKey)
  final String mode;

  /// Create a copy of AdvancedSpecialLiteralQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedSpecialLiteralQueriesCopyWith<_AdvancedSpecialLiteralQueries>
      get copyWith => __$AdvancedSpecialLiteralQueriesCopyWithImpl<
          _AdvancedSpecialLiteralQueries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedSpecialLiteralQueriesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedSpecialLiteralQueries &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @override
  String toString() {
    return 'AdvancedSpecialLiteralQueries(mode: $mode)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedSpecialLiteralQueriesCopyWith<$Res>
    implements $AdvancedSpecialLiteralQueriesCopyWith<$Res> {
  factory _$AdvancedSpecialLiteralQueriesCopyWith(
          _AdvancedSpecialLiteralQueries value,
          $Res Function(_AdvancedSpecialLiteralQueries) _then) =
      __$AdvancedSpecialLiteralQueriesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedSpecialLiteralQueries.modeKey) String mode});
}

/// @nodoc
class __$AdvancedSpecialLiteralQueriesCopyWithImpl<$Res>
    implements _$AdvancedSpecialLiteralQueriesCopyWith<$Res> {
  __$AdvancedSpecialLiteralQueriesCopyWithImpl(this._self, this._then);

  final _AdvancedSpecialLiteralQueries _self;
  final $Res Function(_AdvancedSpecialLiteralQueries) _then;

  /// Create a copy of AdvancedSpecialLiteralQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? mode = null,
  }) {
    return _then(_AdvancedSpecialLiteralQueries(
      mode: null == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
