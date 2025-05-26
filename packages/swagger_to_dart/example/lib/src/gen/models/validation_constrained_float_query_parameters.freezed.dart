// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_constrained_float_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidationConstrainedFloatQueryParameters {
  /// value
  @JsonKey(name: ValidationConstrainedFloatQueryParameters.valueKey)
  double get value;

  /// Create a copy of ValidationConstrainedFloatQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValidationConstrainedFloatQueryParametersCopyWith<
    ValidationConstrainedFloatQueryParameters
  >
  get copyWith => _$ValidationConstrainedFloatQueryParametersCopyWithImpl<
    ValidationConstrainedFloatQueryParameters
  >(this as ValidationConstrainedFloatQueryParameters, _$identity);

  /// Serializes this ValidationConstrainedFloatQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidationConstrainedFloatQueryParameters &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ValidationConstrainedFloatQueryParameters(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ValidationConstrainedFloatQueryParametersCopyWith<$Res> {
  factory $ValidationConstrainedFloatQueryParametersCopyWith(
    ValidationConstrainedFloatQueryParameters value,
    $Res Function(ValidationConstrainedFloatQueryParameters) _then,
  ) = _$ValidationConstrainedFloatQueryParametersCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: ValidationConstrainedFloatQueryParameters.valueKey)
    double value,
  });
}

/// @nodoc
class _$ValidationConstrainedFloatQueryParametersCopyWithImpl<$Res>
    implements $ValidationConstrainedFloatQueryParametersCopyWith<$Res> {
  _$ValidationConstrainedFloatQueryParametersCopyWithImpl(
    this._self,
    this._then,
  );

  final ValidationConstrainedFloatQueryParameters _self;
  final $Res Function(ValidationConstrainedFloatQueryParameters) _then;

  /// Create a copy of ValidationConstrainedFloatQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _self.copyWith(
        value:
            null == value
                ? _self.value
                : value // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc

@jsonSerializable
class _ValidationConstrainedFloatQueryParameters
    extends ValidationConstrainedFloatQueryParameters {
  const _ValidationConstrainedFloatQueryParameters({
    @JsonKey(name: ValidationConstrainedFloatQueryParameters.valueKey)
    required this.value,
  }) : super._();
  factory _ValidationConstrainedFloatQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$ValidationConstrainedFloatQueryParametersFromJson(json);

  /// value
  @override
  @JsonKey(name: ValidationConstrainedFloatQueryParameters.valueKey)
  final double value;

  /// Create a copy of ValidationConstrainedFloatQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValidationConstrainedFloatQueryParametersCopyWith<
    _ValidationConstrainedFloatQueryParameters
  >
  get copyWith => __$ValidationConstrainedFloatQueryParametersCopyWithImpl<
    _ValidationConstrainedFloatQueryParameters
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ValidationConstrainedFloatQueryParametersToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValidationConstrainedFloatQueryParameters &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ValidationConstrainedFloatQueryParameters(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ValidationConstrainedFloatQueryParametersCopyWith<$Res>
    implements $ValidationConstrainedFloatQueryParametersCopyWith<$Res> {
  factory _$ValidationConstrainedFloatQueryParametersCopyWith(
    _ValidationConstrainedFloatQueryParameters value,
    $Res Function(_ValidationConstrainedFloatQueryParameters) _then,
  ) = __$ValidationConstrainedFloatQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: ValidationConstrainedFloatQueryParameters.valueKey)
    double value,
  });
}

/// @nodoc
class __$ValidationConstrainedFloatQueryParametersCopyWithImpl<$Res>
    implements _$ValidationConstrainedFloatQueryParametersCopyWith<$Res> {
  __$ValidationConstrainedFloatQueryParametersCopyWithImpl(
    this._self,
    this._then,
  );

  final _ValidationConstrainedFloatQueryParameters _self;
  final $Res Function(_ValidationConstrainedFloatQueryParameters) _then;

  /// Create a copy of ValidationConstrainedFloatQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? value = null}) {
    return _then(
      _ValidationConstrainedFloatQueryParameters(
        value:
            null == value
                ? _self.value
                : value // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}
