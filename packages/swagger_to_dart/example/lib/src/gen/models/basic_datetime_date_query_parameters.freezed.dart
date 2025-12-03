// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_datetime_date_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BasicDatetimeDateQueryParameters {
  /// d
  @JsonKey(name: BasicDatetimeDateQueryParameters.dKey_)
  DateTime get d;

  /// Create a copy of BasicDatetimeDateQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BasicDatetimeDateQueryParametersCopyWith<BasicDatetimeDateQueryParameters>
      get copyWith => _$BasicDatetimeDateQueryParametersCopyWithImpl<
              BasicDatetimeDateQueryParameters>(
          this as BasicDatetimeDateQueryParameters, _$identity);

  /// Serializes this BasicDatetimeDateQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BasicDatetimeDateQueryParameters &&
            (identical(other.d, d) || other.d == d));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, d);

  @override
  String toString() {
    return 'BasicDatetimeDateQueryParameters(d: $d)';
  }
}

/// @nodoc
abstract mixin class $BasicDatetimeDateQueryParametersCopyWith<$Res> {
  factory $BasicDatetimeDateQueryParametersCopyWith(
          BasicDatetimeDateQueryParameters value,
          $Res Function(BasicDatetimeDateQueryParameters) _then) =
      _$BasicDatetimeDateQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: BasicDatetimeDateQueryParameters.dKey_) DateTime d});
}

/// @nodoc
class _$BasicDatetimeDateQueryParametersCopyWithImpl<$Res>
    implements $BasicDatetimeDateQueryParametersCopyWith<$Res> {
  _$BasicDatetimeDateQueryParametersCopyWithImpl(this._self, this._then);

  final BasicDatetimeDateQueryParameters _self;
  final $Res Function(BasicDatetimeDateQueryParameters) _then;

  /// Create a copy of BasicDatetimeDateQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? d = null,
  }) {
    return _then(_self.copyWith(
      d: null == d
          ? _self.d
          : d // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [BasicDatetimeDateQueryParameters].
extension BasicDatetimeDateQueryParametersPatterns
    on BasicDatetimeDateQueryParameters {
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
    TResult Function(_BasicDatetimeDateQueryParameters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BasicDatetimeDateQueryParameters() when $default != null:
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
    TResult Function(_BasicDatetimeDateQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BasicDatetimeDateQueryParameters():
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
    TResult? Function(_BasicDatetimeDateQueryParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BasicDatetimeDateQueryParameters() when $default != null:
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
            @JsonKey(name: BasicDatetimeDateQueryParameters.dKey_) DateTime d)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BasicDatetimeDateQueryParameters() when $default != null:
        return $default(_that.d);
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
            @JsonKey(name: BasicDatetimeDateQueryParameters.dKey_) DateTime d)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BasicDatetimeDateQueryParameters():
        return $default(_that.d);
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
            @JsonKey(name: BasicDatetimeDateQueryParameters.dKey_) DateTime d)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BasicDatetimeDateQueryParameters() when $default != null:
        return $default(_that.d);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _BasicDatetimeDateQueryParameters
    extends BasicDatetimeDateQueryParameters {
  const _BasicDatetimeDateQueryParameters(
      {@JsonKey(name: BasicDatetimeDateQueryParameters.dKey_) required this.d})
      : super._();
  factory _BasicDatetimeDateQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$BasicDatetimeDateQueryParametersFromJson(json);

  /// d
  @override
  @JsonKey(name: BasicDatetimeDateQueryParameters.dKey_)
  final DateTime d;

  /// Create a copy of BasicDatetimeDateQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BasicDatetimeDateQueryParametersCopyWith<_BasicDatetimeDateQueryParameters>
      get copyWith => __$BasicDatetimeDateQueryParametersCopyWithImpl<
          _BasicDatetimeDateQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BasicDatetimeDateQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BasicDatetimeDateQueryParameters &&
            (identical(other.d, d) || other.d == d));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, d);

  @override
  String toString() {
    return 'BasicDatetimeDateQueryParameters(d: $d)';
  }
}

/// @nodoc
abstract mixin class _$BasicDatetimeDateQueryParametersCopyWith<$Res>
    implements $BasicDatetimeDateQueryParametersCopyWith<$Res> {
  factory _$BasicDatetimeDateQueryParametersCopyWith(
          _BasicDatetimeDateQueryParameters value,
          $Res Function(_BasicDatetimeDateQueryParameters) _then) =
      __$BasicDatetimeDateQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BasicDatetimeDateQueryParameters.dKey_) DateTime d});
}

/// @nodoc
class __$BasicDatetimeDateQueryParametersCopyWithImpl<$Res>
    implements _$BasicDatetimeDateQueryParametersCopyWith<$Res> {
  __$BasicDatetimeDateQueryParametersCopyWithImpl(this._self, this._then);

  final _BasicDatetimeDateQueryParameters _self;
  final $Res Function(_BasicDatetimeDateQueryParameters) _then;

  /// Create a copy of BasicDatetimeDateQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? d = null,
  }) {
    return _then(_BasicDatetimeDateQueryParameters(
      d: null == d
          ? _self.d
          : d // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}
