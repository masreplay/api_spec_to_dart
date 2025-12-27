// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_datetime_timedelta_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BasicDatetimeTimedeltaQueryParameters {
  /// td
  @JsonKey(name: BasicDatetimeTimedeltaQueryParameters.tdKey_)
  TimeOfDay get td;

  /// Create a copy of BasicDatetimeTimedeltaQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BasicDatetimeTimedeltaQueryParametersCopyWith<
          BasicDatetimeTimedeltaQueryParameters>
      get copyWith => _$BasicDatetimeTimedeltaQueryParametersCopyWithImpl<
              BasicDatetimeTimedeltaQueryParameters>(
          this as BasicDatetimeTimedeltaQueryParameters, _$identity);

  /// Serializes this BasicDatetimeTimedeltaQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BasicDatetimeTimedeltaQueryParameters &&
            (identical(other.td, td) || other.td == td));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, td);

  @override
  String toString() {
    return 'BasicDatetimeTimedeltaQueryParameters(td: $td)';
  }
}

/// @nodoc
abstract mixin class $BasicDatetimeTimedeltaQueryParametersCopyWith<$Res> {
  factory $BasicDatetimeTimedeltaQueryParametersCopyWith(
          BasicDatetimeTimedeltaQueryParameters value,
          $Res Function(BasicDatetimeTimedeltaQueryParameters) _then) =
      _$BasicDatetimeTimedeltaQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: BasicDatetimeTimedeltaQueryParameters.tdKey_)
      TimeOfDay td});
}

/// @nodoc
class _$BasicDatetimeTimedeltaQueryParametersCopyWithImpl<$Res>
    implements $BasicDatetimeTimedeltaQueryParametersCopyWith<$Res> {
  _$BasicDatetimeTimedeltaQueryParametersCopyWithImpl(this._self, this._then);

  final BasicDatetimeTimedeltaQueryParameters _self;
  final $Res Function(BasicDatetimeTimedeltaQueryParameters) _then;

  /// Create a copy of BasicDatetimeTimedeltaQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? td = null,
  }) {
    return _then(_self.copyWith(
      td: null == td
          ? _self.td
          : td // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// Adds pattern-matching-related methods to [BasicDatetimeTimedeltaQueryParameters].
extension BasicDatetimeTimedeltaQueryParametersPatterns
    on BasicDatetimeTimedeltaQueryParameters {
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
    TResult Function(_BasicDatetimeTimedeltaQueryParameters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BasicDatetimeTimedeltaQueryParameters() when $default != null:
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
    TResult Function(_BasicDatetimeTimedeltaQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BasicDatetimeTimedeltaQueryParameters():
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
    TResult? Function(_BasicDatetimeTimedeltaQueryParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BasicDatetimeTimedeltaQueryParameters() when $default != null:
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
            @JsonKey(name: BasicDatetimeTimedeltaQueryParameters.tdKey_)
            TimeOfDay td)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BasicDatetimeTimedeltaQueryParameters() when $default != null:
        return $default(_that.td);
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
            @JsonKey(name: BasicDatetimeTimedeltaQueryParameters.tdKey_)
            TimeOfDay td)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BasicDatetimeTimedeltaQueryParameters():
        return $default(_that.td);
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
            @JsonKey(name: BasicDatetimeTimedeltaQueryParameters.tdKey_)
            TimeOfDay td)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BasicDatetimeTimedeltaQueryParameters() when $default != null:
        return $default(_that.td);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _BasicDatetimeTimedeltaQueryParameters
    extends BasicDatetimeTimedeltaQueryParameters {
  const _BasicDatetimeTimedeltaQueryParameters(
      {@JsonKey(name: BasicDatetimeTimedeltaQueryParameters.tdKey_)
      required this.td})
      : super._();
  factory _BasicDatetimeTimedeltaQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$BasicDatetimeTimedeltaQueryParametersFromJson(json);

  /// td
  @override
  @JsonKey(name: BasicDatetimeTimedeltaQueryParameters.tdKey_)
  final TimeOfDay td;

  /// Create a copy of BasicDatetimeTimedeltaQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BasicDatetimeTimedeltaQueryParametersCopyWith<
          _BasicDatetimeTimedeltaQueryParameters>
      get copyWith => __$BasicDatetimeTimedeltaQueryParametersCopyWithImpl<
          _BasicDatetimeTimedeltaQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BasicDatetimeTimedeltaQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BasicDatetimeTimedeltaQueryParameters &&
            (identical(other.td, td) || other.td == td));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, td);

  @override
  String toString() {
    return 'BasicDatetimeTimedeltaQueryParameters(td: $td)';
  }
}

/// @nodoc
abstract mixin class _$BasicDatetimeTimedeltaQueryParametersCopyWith<$Res>
    implements $BasicDatetimeTimedeltaQueryParametersCopyWith<$Res> {
  factory _$BasicDatetimeTimedeltaQueryParametersCopyWith(
          _BasicDatetimeTimedeltaQueryParameters value,
          $Res Function(_BasicDatetimeTimedeltaQueryParameters) _then) =
      __$BasicDatetimeTimedeltaQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BasicDatetimeTimedeltaQueryParameters.tdKey_)
      TimeOfDay td});
}

/// @nodoc
class __$BasicDatetimeTimedeltaQueryParametersCopyWithImpl<$Res>
    implements _$BasicDatetimeTimedeltaQueryParametersCopyWith<$Res> {
  __$BasicDatetimeTimedeltaQueryParametersCopyWithImpl(this._self, this._then);

  final _BasicDatetimeTimedeltaQueryParameters _self;
  final $Res Function(_BasicDatetimeTimedeltaQueryParameters) _then;

  /// Create a copy of BasicDatetimeTimedeltaQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? td = null,
  }) {
    return _then(_BasicDatetimeTimedeltaQueryParameters(
      td: null == td
          ? _self.td
          : td // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}
