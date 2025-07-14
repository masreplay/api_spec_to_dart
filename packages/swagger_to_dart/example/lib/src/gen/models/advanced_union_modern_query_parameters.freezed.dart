// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_union_modern_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedUnionModernQueryParameters {
  /// value
  @JsonKey(name: AdvancedUnionModernQueryParameters.valueKey)
  dynamic? get value;

  /// Create a copy of AdvancedUnionModernQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedUnionModernQueryParametersCopyWith<
          AdvancedUnionModernQueryParameters>
      get copyWith => _$AdvancedUnionModernQueryParametersCopyWithImpl<
              AdvancedUnionModernQueryParameters>(
          this as AdvancedUnionModernQueryParameters, _$identity);

  /// Serializes this AdvancedUnionModernQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedUnionModernQueryParameters &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'AdvancedUnionModernQueryParameters(value: $value)';
  }
}

/// @nodoc
abstract mixin class $AdvancedUnionModernQueryParametersCopyWith<$Res> {
  factory $AdvancedUnionModernQueryParametersCopyWith(
          AdvancedUnionModernQueryParameters value,
          $Res Function(AdvancedUnionModernQueryParameters) _then) =
      _$AdvancedUnionModernQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedUnionModernQueryParameters.valueKey)
      dynamic? value});
}

/// @nodoc
class _$AdvancedUnionModernQueryParametersCopyWithImpl<$Res>
    implements $AdvancedUnionModernQueryParametersCopyWith<$Res> {
  _$AdvancedUnionModernQueryParametersCopyWithImpl(this._self, this._then);

  final AdvancedUnionModernQueryParameters _self;
  final $Res Function(AdvancedUnionModernQueryParameters) _then;

  /// Create a copy of AdvancedUnionModernQueryParameters
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
              as dynamic?,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _AdvancedUnionModernQueryParameters
    extends AdvancedUnionModernQueryParameters {
  const _AdvancedUnionModernQueryParameters(
      {@JsonKey(name: AdvancedUnionModernQueryParameters.valueKey)
      required this.value})
      : super._();
  factory _AdvancedUnionModernQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$AdvancedUnionModernQueryParametersFromJson(json);

  /// value
  @override
  @JsonKey(name: AdvancedUnionModernQueryParameters.valueKey)
  final dynamic? value;

  /// Create a copy of AdvancedUnionModernQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedUnionModernQueryParametersCopyWith<
          _AdvancedUnionModernQueryParameters>
      get copyWith => __$AdvancedUnionModernQueryParametersCopyWithImpl<
          _AdvancedUnionModernQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedUnionModernQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedUnionModernQueryParameters &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'AdvancedUnionModernQueryParameters(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedUnionModernQueryParametersCopyWith<$Res>
    implements $AdvancedUnionModernQueryParametersCopyWith<$Res> {
  factory _$AdvancedUnionModernQueryParametersCopyWith(
          _AdvancedUnionModernQueryParameters value,
          $Res Function(_AdvancedUnionModernQueryParameters) _then) =
      __$AdvancedUnionModernQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedUnionModernQueryParameters.valueKey)
      dynamic? value});
}

/// @nodoc
class __$AdvancedUnionModernQueryParametersCopyWithImpl<$Res>
    implements _$AdvancedUnionModernQueryParametersCopyWith<$Res> {
  __$AdvancedUnionModernQueryParametersCopyWithImpl(this._self, this._then);

  final _AdvancedUnionModernQueryParameters _self;
  final $Res Function(_AdvancedUnionModernQueryParameters) _then;

  /// Create a copy of AdvancedUnionModernQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_AdvancedUnionModernQueryParameters(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic?,
    ));
  }
}
