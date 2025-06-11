// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_union_optional_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedUnionOptionalQueryParameters {
  /// value
  @JsonKey(name: AdvancedUnionOptionalQueryParameters.valueKey)
  String? get value;

  /// Create a copy of AdvancedUnionOptionalQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedUnionOptionalQueryParametersCopyWith<
          AdvancedUnionOptionalQueryParameters>
      get copyWith => _$AdvancedUnionOptionalQueryParametersCopyWithImpl<
              AdvancedUnionOptionalQueryParameters>(
          this as AdvancedUnionOptionalQueryParameters, _$identity);

  /// Serializes this AdvancedUnionOptionalQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedUnionOptionalQueryParameters &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'AdvancedUnionOptionalQueryParameters(value: $value)';
  }
}

/// @nodoc
abstract mixin class $AdvancedUnionOptionalQueryParametersCopyWith<$Res> {
  factory $AdvancedUnionOptionalQueryParametersCopyWith(
          AdvancedUnionOptionalQueryParameters value,
          $Res Function(AdvancedUnionOptionalQueryParameters) _then) =
      _$AdvancedUnionOptionalQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedUnionOptionalQueryParameters.valueKey)
      String? value});
}

/// @nodoc
class _$AdvancedUnionOptionalQueryParametersCopyWithImpl<$Res>
    implements $AdvancedUnionOptionalQueryParametersCopyWith<$Res> {
  _$AdvancedUnionOptionalQueryParametersCopyWithImpl(this._self, this._then);

  final AdvancedUnionOptionalQueryParameters _self;
  final $Res Function(AdvancedUnionOptionalQueryParameters) _then;

  /// Create a copy of AdvancedUnionOptionalQueryParameters
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

@jsonSerializable
class _AdvancedUnionOptionalQueryParameters
    extends AdvancedUnionOptionalQueryParameters {
  const _AdvancedUnionOptionalQueryParameters(
      {@JsonKey(name: AdvancedUnionOptionalQueryParameters.valueKey)
      required this.value})
      : super._();
  factory _AdvancedUnionOptionalQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$AdvancedUnionOptionalQueryParametersFromJson(json);

  /// value
  @override
  @JsonKey(name: AdvancedUnionOptionalQueryParameters.valueKey)
  final String? value;

  /// Create a copy of AdvancedUnionOptionalQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedUnionOptionalQueryParametersCopyWith<
          _AdvancedUnionOptionalQueryParameters>
      get copyWith => __$AdvancedUnionOptionalQueryParametersCopyWithImpl<
          _AdvancedUnionOptionalQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedUnionOptionalQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedUnionOptionalQueryParameters &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'AdvancedUnionOptionalQueryParameters(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedUnionOptionalQueryParametersCopyWith<$Res>
    implements $AdvancedUnionOptionalQueryParametersCopyWith<$Res> {
  factory _$AdvancedUnionOptionalQueryParametersCopyWith(
          _AdvancedUnionOptionalQueryParameters value,
          $Res Function(_AdvancedUnionOptionalQueryParameters) _then) =
      __$AdvancedUnionOptionalQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedUnionOptionalQueryParameters.valueKey)
      String? value});
}

/// @nodoc
class __$AdvancedUnionOptionalQueryParametersCopyWithImpl<$Res>
    implements _$AdvancedUnionOptionalQueryParametersCopyWith<$Res> {
  __$AdvancedUnionOptionalQueryParametersCopyWithImpl(this._self, this._then);

  final _AdvancedUnionOptionalQueryParameters _self;
  final $Res Function(_AdvancedUnionOptionalQueryParameters) _then;

  /// Create a copy of AdvancedUnionOptionalQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_AdvancedUnionOptionalQueryParameters(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}
