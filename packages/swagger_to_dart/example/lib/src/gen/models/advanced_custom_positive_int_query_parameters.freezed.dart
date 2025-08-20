// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_custom_positive_int_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedCustomPositiveIntQueryParameters {
  /// value
  @JsonKey(name: AdvancedCustomPositiveIntQueryParameters.valueKey)
  int get value;

  /// value2
  @JsonKey(name: AdvancedCustomPositiveIntQueryParameters.value2Key)
  int get value2;

  /// Create a copy of AdvancedCustomPositiveIntQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedCustomPositiveIntQueryParametersCopyWith<
          AdvancedCustomPositiveIntQueryParameters>
      get copyWith => _$AdvancedCustomPositiveIntQueryParametersCopyWithImpl<
              AdvancedCustomPositiveIntQueryParameters>(
          this as AdvancedCustomPositiveIntQueryParameters, _$identity);

  /// Serializes this AdvancedCustomPositiveIntQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedCustomPositiveIntQueryParameters &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.value2, value2) || other.value2 == value2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, value2);

  @override
  String toString() {
    return 'AdvancedCustomPositiveIntQueryParameters(value: $value, value2: $value2)';
  }
}

/// @nodoc
abstract mixin class $AdvancedCustomPositiveIntQueryParametersCopyWith<$Res> {
  factory $AdvancedCustomPositiveIntQueryParametersCopyWith(
          AdvancedCustomPositiveIntQueryParameters value,
          $Res Function(AdvancedCustomPositiveIntQueryParameters) _then) =
      _$AdvancedCustomPositiveIntQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedCustomPositiveIntQueryParameters.valueKey)
      int value,
      @JsonKey(name: AdvancedCustomPositiveIntQueryParameters.value2Key)
      int value2});
}

/// @nodoc
class _$AdvancedCustomPositiveIntQueryParametersCopyWithImpl<$Res>
    implements $AdvancedCustomPositiveIntQueryParametersCopyWith<$Res> {
  _$AdvancedCustomPositiveIntQueryParametersCopyWithImpl(
      this._self, this._then);

  final AdvancedCustomPositiveIntQueryParameters _self;
  final $Res Function(AdvancedCustomPositiveIntQueryParameters) _then;

  /// Create a copy of AdvancedCustomPositiveIntQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? value2 = null,
  }) {
    return _then(_self.copyWith(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      value2: null == value2
          ? _self.value2
          : value2 // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [AdvancedCustomPositiveIntQueryParameters].
extension AdvancedCustomPositiveIntQueryParametersPatterns
    on AdvancedCustomPositiveIntQueryParameters {
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
    TResult Function(_AdvancedCustomPositiveIntQueryParameters value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AdvancedCustomPositiveIntQueryParameters() when $default != null:
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
    TResult Function(_AdvancedCustomPositiveIntQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedCustomPositiveIntQueryParameters():
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
    TResult? Function(_AdvancedCustomPositiveIntQueryParameters value)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedCustomPositiveIntQueryParameters() when $default != null:
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
            @JsonKey(name: AdvancedCustomPositiveIntQueryParameters.valueKey)
            int value,
            @JsonKey(name: AdvancedCustomPositiveIntQueryParameters.value2Key)
            int value2)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AdvancedCustomPositiveIntQueryParameters() when $default != null:
        return $default(_that.value, _that.value2);
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
            @JsonKey(name: AdvancedCustomPositiveIntQueryParameters.valueKey)
            int value,
            @JsonKey(name: AdvancedCustomPositiveIntQueryParameters.value2Key)
            int value2)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedCustomPositiveIntQueryParameters():
        return $default(_that.value, _that.value2);
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
            @JsonKey(name: AdvancedCustomPositiveIntQueryParameters.valueKey)
            int value,
            @JsonKey(name: AdvancedCustomPositiveIntQueryParameters.value2Key)
            int value2)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdvancedCustomPositiveIntQueryParameters() when $default != null:
        return $default(_that.value, _that.value2);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _AdvancedCustomPositiveIntQueryParameters
    extends AdvancedCustomPositiveIntQueryParameters {
  const _AdvancedCustomPositiveIntQueryParameters(
      {@JsonKey(name: AdvancedCustomPositiveIntQueryParameters.valueKey)
      required this.value,
      @JsonKey(name: AdvancedCustomPositiveIntQueryParameters.value2Key)
      required this.value2})
      : super._();
  factory _AdvancedCustomPositiveIntQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$AdvancedCustomPositiveIntQueryParametersFromJson(json);

  /// value
  @override
  @JsonKey(name: AdvancedCustomPositiveIntQueryParameters.valueKey)
  final int value;

  /// value2
  @override
  @JsonKey(name: AdvancedCustomPositiveIntQueryParameters.value2Key)
  final int value2;

  /// Create a copy of AdvancedCustomPositiveIntQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedCustomPositiveIntQueryParametersCopyWith<
          _AdvancedCustomPositiveIntQueryParameters>
      get copyWith => __$AdvancedCustomPositiveIntQueryParametersCopyWithImpl<
          _AdvancedCustomPositiveIntQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedCustomPositiveIntQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedCustomPositiveIntQueryParameters &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.value2, value2) || other.value2 == value2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, value2);

  @override
  String toString() {
    return 'AdvancedCustomPositiveIntQueryParameters(value: $value, value2: $value2)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedCustomPositiveIntQueryParametersCopyWith<$Res>
    implements $AdvancedCustomPositiveIntQueryParametersCopyWith<$Res> {
  factory _$AdvancedCustomPositiveIntQueryParametersCopyWith(
          _AdvancedCustomPositiveIntQueryParameters value,
          $Res Function(_AdvancedCustomPositiveIntQueryParameters) _then) =
      __$AdvancedCustomPositiveIntQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedCustomPositiveIntQueryParameters.valueKey)
      int value,
      @JsonKey(name: AdvancedCustomPositiveIntQueryParameters.value2Key)
      int value2});
}

/// @nodoc
class __$AdvancedCustomPositiveIntQueryParametersCopyWithImpl<$Res>
    implements _$AdvancedCustomPositiveIntQueryParametersCopyWith<$Res> {
  __$AdvancedCustomPositiveIntQueryParametersCopyWithImpl(
      this._self, this._then);

  final _AdvancedCustomPositiveIntQueryParameters _self;
  final $Res Function(_AdvancedCustomPositiveIntQueryParameters) _then;

  /// Create a copy of AdvancedCustomPositiveIntQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
    Object? value2 = null,
  }) {
    return _then(_AdvancedCustomPositiveIntQueryParameters(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      value2: null == value2
          ? _self.value2
          : value2 // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
