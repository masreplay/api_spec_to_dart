// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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
  @JsonKey(name: ValidationConstrainedFloatQueryParameters.valueKey_)
  double get value;

  /// Create a copy of ValidationConstrainedFloatQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValidationConstrainedFloatQueryParametersCopyWith<
          ValidationConstrainedFloatQueryParameters>
      get copyWith => _$ValidationConstrainedFloatQueryParametersCopyWithImpl<
              ValidationConstrainedFloatQueryParameters>(
          this as ValidationConstrainedFloatQueryParameters, _$identity);

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
          $Res Function(ValidationConstrainedFloatQueryParameters) _then) =
      _$ValidationConstrainedFloatQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ValidationConstrainedFloatQueryParameters.valueKey_)
      double value});
}

/// @nodoc
class _$ValidationConstrainedFloatQueryParametersCopyWithImpl<$Res>
    implements $ValidationConstrainedFloatQueryParametersCopyWith<$Res> {
  _$ValidationConstrainedFloatQueryParametersCopyWithImpl(
      this._self, this._then);

  final ValidationConstrainedFloatQueryParameters _self;
  final $Res Function(ValidationConstrainedFloatQueryParameters) _then;

  /// Create a copy of ValidationConstrainedFloatQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [ValidationConstrainedFloatQueryParameters].
extension ValidationConstrainedFloatQueryParametersPatterns
    on ValidationConstrainedFloatQueryParameters {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ValidationConstrainedFloatQueryParameters value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValidationConstrainedFloatQueryParameters() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ValidationConstrainedFloatQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidationConstrainedFloatQueryParameters():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ValidationConstrainedFloatQueryParameters value)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidationConstrainedFloatQueryParameters() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: ValidationConstrainedFloatQueryParameters.valueKey_)
            double value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValidationConstrainedFloatQueryParameters() when $default != null:
        return $default(_that.value);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: ValidationConstrainedFloatQueryParameters.valueKey_)
            double value)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidationConstrainedFloatQueryParameters():
        return $default(_that.value);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: ValidationConstrainedFloatQueryParameters.valueKey_)
            double value)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidationConstrainedFloatQueryParameters() when $default != null:
        return $default(_that.value);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _ValidationConstrainedFloatQueryParameters
    extends ValidationConstrainedFloatQueryParameters {
  const _ValidationConstrainedFloatQueryParameters(
      {@JsonKey(name: ValidationConstrainedFloatQueryParameters.valueKey_)
      required this.value})
      : super._();
  factory _ValidationConstrainedFloatQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$ValidationConstrainedFloatQueryParametersFromJson(json);

  /// value
  @override
  @JsonKey(name: ValidationConstrainedFloatQueryParameters.valueKey_)
  final double value;

  /// Create a copy of ValidationConstrainedFloatQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValidationConstrainedFloatQueryParametersCopyWith<
          _ValidationConstrainedFloatQueryParameters>
      get copyWith => __$ValidationConstrainedFloatQueryParametersCopyWithImpl<
          _ValidationConstrainedFloatQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ValidationConstrainedFloatQueryParametersToJson(
      this,
    );
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
          $Res Function(_ValidationConstrainedFloatQueryParameters) _then) =
      __$ValidationConstrainedFloatQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ValidationConstrainedFloatQueryParameters.valueKey_)
      double value});
}

/// @nodoc
class __$ValidationConstrainedFloatQueryParametersCopyWithImpl<$Res>
    implements _$ValidationConstrainedFloatQueryParametersCopyWith<$Res> {
  __$ValidationConstrainedFloatQueryParametersCopyWithImpl(
      this._self, this._then);

  final _ValidationConstrainedFloatQueryParameters _self;
  final $Res Function(_ValidationConstrainedFloatQueryParameters) _then;

  /// Create a copy of ValidationConstrainedFloatQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_ValidationConstrainedFloatQueryParameters(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}
