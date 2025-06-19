// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_union_simple_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedUnionSimpleQueryParameters {
  /// value
  @JsonKey(name: AdvancedUnionSimpleQueryParameters.valueKey)
  dynamic get value;

  /// Create a copy of AdvancedUnionSimpleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedUnionSimpleQueryParametersCopyWith<
          AdvancedUnionSimpleQueryParameters>
      get copyWith => _$AdvancedUnionSimpleQueryParametersCopyWithImpl<
              AdvancedUnionSimpleQueryParameters>(
          this as AdvancedUnionSimpleQueryParameters, _$identity);

  /// Serializes this AdvancedUnionSimpleQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedUnionSimpleQueryParameters &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'AdvancedUnionSimpleQueryParameters(value: $value)';
  }
}

/// @nodoc
abstract mixin class $AdvancedUnionSimpleQueryParametersCopyWith<$Res> {
  factory $AdvancedUnionSimpleQueryParametersCopyWith(
          AdvancedUnionSimpleQueryParameters value,
          $Res Function(AdvancedUnionSimpleQueryParameters) _then) =
      _$AdvancedUnionSimpleQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedUnionSimpleQueryParameters.valueKey)
      dynamic value});
}

/// @nodoc
class _$AdvancedUnionSimpleQueryParametersCopyWithImpl<$Res>
    implements $AdvancedUnionSimpleQueryParametersCopyWith<$Res> {
  _$AdvancedUnionSimpleQueryParametersCopyWithImpl(this._self, this._then);

  final AdvancedUnionSimpleQueryParameters _self;
  final $Res Function(AdvancedUnionSimpleQueryParameters) _then;

  /// Create a copy of AdvancedUnionSimpleQueryParameters
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
              as dynamic,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _AdvancedUnionSimpleQueryParameters
    extends AdvancedUnionSimpleQueryParameters {
  const _AdvancedUnionSimpleQueryParameters(
      {@JsonKey(name: AdvancedUnionSimpleQueryParameters.valueKey)
      required this.value})
      : super._();
  factory _AdvancedUnionSimpleQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$AdvancedUnionSimpleQueryParametersFromJson(json);

  /// value
  @override
  @JsonKey(name: AdvancedUnionSimpleQueryParameters.valueKey)
  final dynamic value;

  /// Create a copy of AdvancedUnionSimpleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedUnionSimpleQueryParametersCopyWith<
          _AdvancedUnionSimpleQueryParameters>
      get copyWith => __$AdvancedUnionSimpleQueryParametersCopyWithImpl<
          _AdvancedUnionSimpleQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedUnionSimpleQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedUnionSimpleQueryParameters &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'AdvancedUnionSimpleQueryParameters(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedUnionSimpleQueryParametersCopyWith<$Res>
    implements $AdvancedUnionSimpleQueryParametersCopyWith<$Res> {
  factory _$AdvancedUnionSimpleQueryParametersCopyWith(
          _AdvancedUnionSimpleQueryParameters value,
          $Res Function(_AdvancedUnionSimpleQueryParameters) _then) =
      __$AdvancedUnionSimpleQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedUnionSimpleQueryParameters.valueKey)
      dynamic value});
}

/// @nodoc
class __$AdvancedUnionSimpleQueryParametersCopyWithImpl<$Res>
    implements _$AdvancedUnionSimpleQueryParametersCopyWith<$Res> {
  __$AdvancedUnionSimpleQueryParametersCopyWithImpl(this._self, this._then);

  final _AdvancedUnionSimpleQueryParameters _self;
  final $Res Function(_AdvancedUnionSimpleQueryParameters) _then;

  /// Create a copy of AdvancedUnionSimpleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_AdvancedUnionSimpleQueryParameters(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}
