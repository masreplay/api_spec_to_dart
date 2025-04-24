// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_special_enum_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedSpecialEnumQueries {
  @JsonKey(name: AdvancedSpecialEnumQueries.levelKey)
  UserLevel get level;

  /// Create a copy of AdvancedSpecialEnumQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedSpecialEnumQueriesCopyWith<AdvancedSpecialEnumQueries>
      get copyWith =>
          _$AdvancedSpecialEnumQueriesCopyWithImpl<AdvancedSpecialEnumQueries>(
              this as AdvancedSpecialEnumQueries, _$identity);

  /// Serializes this AdvancedSpecialEnumQueries to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedSpecialEnumQueries &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, level);

  @override
  String toString() {
    return 'AdvancedSpecialEnumQueries(level: $level)';
  }
}

/// @nodoc
abstract mixin class $AdvancedSpecialEnumQueriesCopyWith<$Res> {
  factory $AdvancedSpecialEnumQueriesCopyWith(AdvancedSpecialEnumQueries value,
          $Res Function(AdvancedSpecialEnumQueries) _then) =
      _$AdvancedSpecialEnumQueriesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedSpecialEnumQueries.levelKey) UserLevel level});
}

/// @nodoc
class _$AdvancedSpecialEnumQueriesCopyWithImpl<$Res>
    implements $AdvancedSpecialEnumQueriesCopyWith<$Res> {
  _$AdvancedSpecialEnumQueriesCopyWithImpl(this._self, this._then);

  final AdvancedSpecialEnumQueries _self;
  final $Res Function(AdvancedSpecialEnumQueries) _then;

  /// Create a copy of AdvancedSpecialEnumQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
  }) {
    return _then(_self.copyWith(
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as UserLevel,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _AdvancedSpecialEnumQueries extends AdvancedSpecialEnumQueries {
  const _AdvancedSpecialEnumQueries(
      {@JsonKey(name: AdvancedSpecialEnumQueries.levelKey)
      this.level = UserLevel.basic})
      : super._();
  factory _AdvancedSpecialEnumQueries.fromJson(Map<String, dynamic> json) =>
      _$AdvancedSpecialEnumQueriesFromJson(json);

  @override
  @JsonKey(name: AdvancedSpecialEnumQueries.levelKey)
  final UserLevel level;

  /// Create a copy of AdvancedSpecialEnumQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedSpecialEnumQueriesCopyWith<_AdvancedSpecialEnumQueries>
      get copyWith => __$AdvancedSpecialEnumQueriesCopyWithImpl<
          _AdvancedSpecialEnumQueries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedSpecialEnumQueriesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedSpecialEnumQueries &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, level);

  @override
  String toString() {
    return 'AdvancedSpecialEnumQueries(level: $level)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedSpecialEnumQueriesCopyWith<$Res>
    implements $AdvancedSpecialEnumQueriesCopyWith<$Res> {
  factory _$AdvancedSpecialEnumQueriesCopyWith(
          _AdvancedSpecialEnumQueries value,
          $Res Function(_AdvancedSpecialEnumQueries) _then) =
      __$AdvancedSpecialEnumQueriesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedSpecialEnumQueries.levelKey) UserLevel level});
}

/// @nodoc
class __$AdvancedSpecialEnumQueriesCopyWithImpl<$Res>
    implements _$AdvancedSpecialEnumQueriesCopyWith<$Res> {
  __$AdvancedSpecialEnumQueriesCopyWithImpl(this._self, this._then);

  final _AdvancedSpecialEnumQueries _self;
  final $Res Function(_AdvancedSpecialEnumQueries) _then;

  /// Create a copy of AdvancedSpecialEnumQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? level = null,
  }) {
    return _then(_AdvancedSpecialEnumQueries(
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as UserLevel,
    ));
  }
}

// dart format on
