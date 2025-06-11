// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_special_enum_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedSpecialEnumQueryParameters {
  /// level
  @JsonKey(name: AdvancedSpecialEnumQueryParameters.levelKey)
  UserLevel get level;

  /// Create a copy of AdvancedSpecialEnumQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedSpecialEnumQueryParametersCopyWith<
          AdvancedSpecialEnumQueryParameters>
      get copyWith => _$AdvancedSpecialEnumQueryParametersCopyWithImpl<
              AdvancedSpecialEnumQueryParameters>(
          this as AdvancedSpecialEnumQueryParameters, _$identity);

  /// Serializes this AdvancedSpecialEnumQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedSpecialEnumQueryParameters &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, level);

  @override
  String toString() {
    return 'AdvancedSpecialEnumQueryParameters(level: $level)';
  }
}

/// @nodoc
abstract mixin class $AdvancedSpecialEnumQueryParametersCopyWith<$Res> {
  factory $AdvancedSpecialEnumQueryParametersCopyWith(
          AdvancedSpecialEnumQueryParameters value,
          $Res Function(AdvancedSpecialEnumQueryParameters) _then) =
      _$AdvancedSpecialEnumQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedSpecialEnumQueryParameters.levelKey)
      UserLevel level});
}

/// @nodoc
class _$AdvancedSpecialEnumQueryParametersCopyWithImpl<$Res>
    implements $AdvancedSpecialEnumQueryParametersCopyWith<$Res> {
  _$AdvancedSpecialEnumQueryParametersCopyWithImpl(this._self, this._then);

  final AdvancedSpecialEnumQueryParameters _self;
  final $Res Function(AdvancedSpecialEnumQueryParameters) _then;

  /// Create a copy of AdvancedSpecialEnumQueryParameters
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

@jsonSerializable
class _AdvancedSpecialEnumQueryParameters
    extends AdvancedSpecialEnumQueryParameters {
  const _AdvancedSpecialEnumQueryParameters(
      {@JsonKey(name: AdvancedSpecialEnumQueryParameters.levelKey)
      this.level = UserLevel.basic})
      : super._();
  factory _AdvancedSpecialEnumQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$AdvancedSpecialEnumQueryParametersFromJson(json);

  /// level
  @override
  @JsonKey(name: AdvancedSpecialEnumQueryParameters.levelKey)
  final UserLevel level;

  /// Create a copy of AdvancedSpecialEnumQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedSpecialEnumQueryParametersCopyWith<
          _AdvancedSpecialEnumQueryParameters>
      get copyWith => __$AdvancedSpecialEnumQueryParametersCopyWithImpl<
          _AdvancedSpecialEnumQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedSpecialEnumQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedSpecialEnumQueryParameters &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, level);

  @override
  String toString() {
    return 'AdvancedSpecialEnumQueryParameters(level: $level)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedSpecialEnumQueryParametersCopyWith<$Res>
    implements $AdvancedSpecialEnumQueryParametersCopyWith<$Res> {
  factory _$AdvancedSpecialEnumQueryParametersCopyWith(
          _AdvancedSpecialEnumQueryParameters value,
          $Res Function(_AdvancedSpecialEnumQueryParameters) _then) =
      __$AdvancedSpecialEnumQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedSpecialEnumQueryParameters.levelKey)
      UserLevel level});
}

/// @nodoc
class __$AdvancedSpecialEnumQueryParametersCopyWithImpl<$Res>
    implements _$AdvancedSpecialEnumQueryParametersCopyWith<$Res> {
  __$AdvancedSpecialEnumQueryParametersCopyWithImpl(this._self, this._then);

  final _AdvancedSpecialEnumQueryParameters _self;
  final $Res Function(_AdvancedSpecialEnumQueryParameters) _then;

  /// Create a copy of AdvancedSpecialEnumQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? level = null,
  }) {
    return _then(_AdvancedSpecialEnumQueryParameters(
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as UserLevel,
    ));
  }
}
