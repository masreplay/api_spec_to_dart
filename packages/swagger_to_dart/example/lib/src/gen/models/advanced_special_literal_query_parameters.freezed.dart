// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_special_literal_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedSpecialLiteralQueryParameters {
  /// mode
  @JsonKey(name: AdvancedSpecialLiteralQueryParameters.modeKey)
  Mode get mode;

  /// Create a copy of AdvancedSpecialLiteralQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedSpecialLiteralQueryParametersCopyWith<
          AdvancedSpecialLiteralQueryParameters>
      get copyWith => _$AdvancedSpecialLiteralQueryParametersCopyWithImpl<
              AdvancedSpecialLiteralQueryParameters>(
          this as AdvancedSpecialLiteralQueryParameters, _$identity);

  /// Serializes this AdvancedSpecialLiteralQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedSpecialLiteralQueryParameters &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @override
  String toString() {
    return 'AdvancedSpecialLiteralQueryParameters(mode: $mode)';
  }
}

/// @nodoc
abstract mixin class $AdvancedSpecialLiteralQueryParametersCopyWith<$Res> {
  factory $AdvancedSpecialLiteralQueryParametersCopyWith(
          AdvancedSpecialLiteralQueryParameters value,
          $Res Function(AdvancedSpecialLiteralQueryParameters) _then) =
      _$AdvancedSpecialLiteralQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedSpecialLiteralQueryParameters.modeKey)
      Mode mode});
}

/// @nodoc
class _$AdvancedSpecialLiteralQueryParametersCopyWithImpl<$Res>
    implements $AdvancedSpecialLiteralQueryParametersCopyWith<$Res> {
  _$AdvancedSpecialLiteralQueryParametersCopyWithImpl(this._self, this._then);

  final AdvancedSpecialLiteralQueryParameters _self;
  final $Res Function(AdvancedSpecialLiteralQueryParameters) _then;

  /// Create a copy of AdvancedSpecialLiteralQueryParameters
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
              as Mode,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _AdvancedSpecialLiteralQueryParameters
    extends AdvancedSpecialLiteralQueryParameters {
  const _AdvancedSpecialLiteralQueryParameters(
      {@JsonKey(name: AdvancedSpecialLiteralQueryParameters.modeKey)
      this.mode = Mode.system})
      : super._();
  factory _AdvancedSpecialLiteralQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$AdvancedSpecialLiteralQueryParametersFromJson(json);

  /// mode
  @override
  @JsonKey(name: AdvancedSpecialLiteralQueryParameters.modeKey)
  final Mode mode;

  /// Create a copy of AdvancedSpecialLiteralQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedSpecialLiteralQueryParametersCopyWith<
          _AdvancedSpecialLiteralQueryParameters>
      get copyWith => __$AdvancedSpecialLiteralQueryParametersCopyWithImpl<
          _AdvancedSpecialLiteralQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedSpecialLiteralQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedSpecialLiteralQueryParameters &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @override
  String toString() {
    return 'AdvancedSpecialLiteralQueryParameters(mode: $mode)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedSpecialLiteralQueryParametersCopyWith<$Res>
    implements $AdvancedSpecialLiteralQueryParametersCopyWith<$Res> {
  factory _$AdvancedSpecialLiteralQueryParametersCopyWith(
          _AdvancedSpecialLiteralQueryParameters value,
          $Res Function(_AdvancedSpecialLiteralQueryParameters) _then) =
      __$AdvancedSpecialLiteralQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedSpecialLiteralQueryParameters.modeKey)
      Mode mode});
}

/// @nodoc
class __$AdvancedSpecialLiteralQueryParametersCopyWithImpl<$Res>
    implements _$AdvancedSpecialLiteralQueryParametersCopyWith<$Res> {
  __$AdvancedSpecialLiteralQueryParametersCopyWithImpl(this._self, this._then);

  final _AdvancedSpecialLiteralQueryParameters _self;
  final $Res Function(_AdvancedSpecialLiteralQueryParameters) _then;

  /// Create a copy of AdvancedSpecialLiteralQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? mode = null,
  }) {
    return _then(_AdvancedSpecialLiteralQueryParameters(
      mode: null == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as Mode,
    ));
  }
}
