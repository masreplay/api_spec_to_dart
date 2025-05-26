// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_constrained_string_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidationConstrainedStringQueryParameters {
  /// value
  @JsonKey(name: ValidationConstrainedStringQueryParameters.valueKey)
  String get value;

  /// Create a copy of ValidationConstrainedStringQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValidationConstrainedStringQueryParametersCopyWith<
    ValidationConstrainedStringQueryParameters
  >
  get copyWith => _$ValidationConstrainedStringQueryParametersCopyWithImpl<
    ValidationConstrainedStringQueryParameters
  >(this as ValidationConstrainedStringQueryParameters, _$identity);

  /// Serializes this ValidationConstrainedStringQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidationConstrainedStringQueryParameters &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ValidationConstrainedStringQueryParameters(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ValidationConstrainedStringQueryParametersCopyWith<$Res> {
  factory $ValidationConstrainedStringQueryParametersCopyWith(
    ValidationConstrainedStringQueryParameters value,
    $Res Function(ValidationConstrainedStringQueryParameters) _then,
  ) = _$ValidationConstrainedStringQueryParametersCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: ValidationConstrainedStringQueryParameters.valueKey)
    String value,
  });
}

/// @nodoc
class _$ValidationConstrainedStringQueryParametersCopyWithImpl<$Res>
    implements $ValidationConstrainedStringQueryParametersCopyWith<$Res> {
  _$ValidationConstrainedStringQueryParametersCopyWithImpl(
    this._self,
    this._then,
  );

  final ValidationConstrainedStringQueryParameters _self;
  final $Res Function(ValidationConstrainedStringQueryParameters) _then;

  /// Create a copy of ValidationConstrainedStringQueryParameters
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
                    as String,
      ),
    );
  }
}

/// @nodoc

@jsonSerializable
class _ValidationConstrainedStringQueryParameters
    extends ValidationConstrainedStringQueryParameters {
  const _ValidationConstrainedStringQueryParameters({
    @JsonKey(name: ValidationConstrainedStringQueryParameters.valueKey)
    required this.value,
  }) : super._();
  factory _ValidationConstrainedStringQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$ValidationConstrainedStringQueryParametersFromJson(json);

  /// value
  @override
  @JsonKey(name: ValidationConstrainedStringQueryParameters.valueKey)
  final String value;

  /// Create a copy of ValidationConstrainedStringQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValidationConstrainedStringQueryParametersCopyWith<
    _ValidationConstrainedStringQueryParameters
  >
  get copyWith => __$ValidationConstrainedStringQueryParametersCopyWithImpl<
    _ValidationConstrainedStringQueryParameters
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ValidationConstrainedStringQueryParametersToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValidationConstrainedStringQueryParameters &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ValidationConstrainedStringQueryParameters(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ValidationConstrainedStringQueryParametersCopyWith<$Res>
    implements $ValidationConstrainedStringQueryParametersCopyWith<$Res> {
  factory _$ValidationConstrainedStringQueryParametersCopyWith(
    _ValidationConstrainedStringQueryParameters value,
    $Res Function(_ValidationConstrainedStringQueryParameters) _then,
  ) = __$ValidationConstrainedStringQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: ValidationConstrainedStringQueryParameters.valueKey)
    String value,
  });
}

/// @nodoc
class __$ValidationConstrainedStringQueryParametersCopyWithImpl<$Res>
    implements _$ValidationConstrainedStringQueryParametersCopyWith<$Res> {
  __$ValidationConstrainedStringQueryParametersCopyWithImpl(
    this._self,
    this._then,
  );

  final _ValidationConstrainedStringQueryParameters _self;
  final $Res Function(_ValidationConstrainedStringQueryParameters) _then;

  /// Create a copy of ValidationConstrainedStringQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? value = null}) {
    return _then(
      _ValidationConstrainedStringQueryParameters(
        value:
            null == value
                ? _self.value
                : value // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}
