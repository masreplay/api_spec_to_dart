// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_constrained_int_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidationConstrainedIntQueryParameters {
  /// value
  @JsonKey(name: ValidationConstrainedIntQueryParameters.valueKey_)
  int get value;

  /// Create a copy of ValidationConstrainedIntQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValidationConstrainedIntQueryParametersCopyWith<
          ValidationConstrainedIntQueryParameters>
      get copyWith => _$ValidationConstrainedIntQueryParametersCopyWithImpl<
              ValidationConstrainedIntQueryParameters>(
          this as ValidationConstrainedIntQueryParameters, _$identity);

  /// Serializes this ValidationConstrainedIntQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidationConstrainedIntQueryParameters &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ValidationConstrainedIntQueryParameters(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ValidationConstrainedIntQueryParametersCopyWith<$Res> {
  factory $ValidationConstrainedIntQueryParametersCopyWith(
          ValidationConstrainedIntQueryParameters value,
          $Res Function(ValidationConstrainedIntQueryParameters) _then) =
      _$ValidationConstrainedIntQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ValidationConstrainedIntQueryParameters.valueKey_)
      int value});
}

/// @nodoc
class _$ValidationConstrainedIntQueryParametersCopyWithImpl<$Res>
    implements $ValidationConstrainedIntQueryParametersCopyWith<$Res> {
  _$ValidationConstrainedIntQueryParametersCopyWithImpl(this._self, this._then);

  final ValidationConstrainedIntQueryParameters _self;
  final $Res Function(ValidationConstrainedIntQueryParameters) _then;

  /// Create a copy of ValidationConstrainedIntQueryParameters
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
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [ValidationConstrainedIntQueryParameters].
extension ValidationConstrainedIntQueryParametersPatterns
    on ValidationConstrainedIntQueryParameters {
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
    TResult Function(_ValidationConstrainedIntQueryParameters value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValidationConstrainedIntQueryParameters() when $default != null:
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
    TResult Function(_ValidationConstrainedIntQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidationConstrainedIntQueryParameters():
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
    TResult? Function(_ValidationConstrainedIntQueryParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidationConstrainedIntQueryParameters() when $default != null:
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
            @JsonKey(name: ValidationConstrainedIntQueryParameters.valueKey_)
            int value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValidationConstrainedIntQueryParameters() when $default != null:
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
            @JsonKey(name: ValidationConstrainedIntQueryParameters.valueKey_)
            int value)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidationConstrainedIntQueryParameters():
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
            @JsonKey(name: ValidationConstrainedIntQueryParameters.valueKey_)
            int value)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidationConstrainedIntQueryParameters() when $default != null:
        return $default(_that.value);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _ValidationConstrainedIntQueryParameters
    extends ValidationConstrainedIntQueryParameters {
  const _ValidationConstrainedIntQueryParameters(
      {@JsonKey(name: ValidationConstrainedIntQueryParameters.valueKey_)
      required this.value})
      : super._();
  factory _ValidationConstrainedIntQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$ValidationConstrainedIntQueryParametersFromJson(json);

  /// value
  @override
  @JsonKey(name: ValidationConstrainedIntQueryParameters.valueKey_)
  final int value;

  /// Create a copy of ValidationConstrainedIntQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValidationConstrainedIntQueryParametersCopyWith<
          _ValidationConstrainedIntQueryParameters>
      get copyWith => __$ValidationConstrainedIntQueryParametersCopyWithImpl<
          _ValidationConstrainedIntQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ValidationConstrainedIntQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValidationConstrainedIntQueryParameters &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ValidationConstrainedIntQueryParameters(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ValidationConstrainedIntQueryParametersCopyWith<$Res>
    implements $ValidationConstrainedIntQueryParametersCopyWith<$Res> {
  factory _$ValidationConstrainedIntQueryParametersCopyWith(
          _ValidationConstrainedIntQueryParameters value,
          $Res Function(_ValidationConstrainedIntQueryParameters) _then) =
      __$ValidationConstrainedIntQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ValidationConstrainedIntQueryParameters.valueKey_)
      int value});
}

/// @nodoc
class __$ValidationConstrainedIntQueryParametersCopyWithImpl<$Res>
    implements _$ValidationConstrainedIntQueryParametersCopyWith<$Res> {
  __$ValidationConstrainedIntQueryParametersCopyWithImpl(
      this._self, this._then);

  final _ValidationConstrainedIntQueryParameters _self;
  final $Res Function(_ValidationConstrainedIntQueryParameters) _then;

  /// Create a copy of ValidationConstrainedIntQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_ValidationConstrainedIntQueryParameters(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
