// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_param_query_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidationParamQueryQueryParameters {
  /// q
  @JsonKey(name: ValidationParamQueryQueryParameters.qKey_)
  String? get q;

  /// skip
  @JsonKey(name: ValidationParamQueryQueryParameters.skipKey_)
  int get skip;

  /// limit
  @JsonKey(name: ValidationParamQueryQueryParameters.limitKey_)
  int get limit;

  /// Create a copy of ValidationParamQueryQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValidationParamQueryQueryParametersCopyWith<
          ValidationParamQueryQueryParameters>
      get copyWith => _$ValidationParamQueryQueryParametersCopyWithImpl<
              ValidationParamQueryQueryParameters>(
          this as ValidationParamQueryQueryParameters, _$identity);

  /// Serializes this ValidationParamQueryQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidationParamQueryQueryParameters &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, q, skip, limit);

  @override
  String toString() {
    return 'ValidationParamQueryQueryParameters(q: $q, skip: $skip, limit: $limit)';
  }
}

/// @nodoc
abstract mixin class $ValidationParamQueryQueryParametersCopyWith<$Res> {
  factory $ValidationParamQueryQueryParametersCopyWith(
          ValidationParamQueryQueryParameters value,
          $Res Function(ValidationParamQueryQueryParameters) _then) =
      _$ValidationParamQueryQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ValidationParamQueryQueryParameters.qKey_) String? q,
      @JsonKey(name: ValidationParamQueryQueryParameters.skipKey_) int skip,
      @JsonKey(name: ValidationParamQueryQueryParameters.limitKey_) int limit});
}

/// @nodoc
class _$ValidationParamQueryQueryParametersCopyWithImpl<$Res>
    implements $ValidationParamQueryQueryParametersCopyWith<$Res> {
  _$ValidationParamQueryQueryParametersCopyWithImpl(this._self, this._then);

  final ValidationParamQueryQueryParameters _self;
  final $Res Function(ValidationParamQueryQueryParameters) _then;

  /// Create a copy of ValidationParamQueryQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = freezed,
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(_self.copyWith(
      q: freezed == q
          ? _self.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
      skip: null == skip
          ? _self.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [ValidationParamQueryQueryParameters].
extension ValidationParamQueryQueryParametersPatterns
    on ValidationParamQueryQueryParameters {
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
    TResult Function(_ValidationParamQueryQueryParameters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValidationParamQueryQueryParameters() when $default != null:
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
    TResult Function(_ValidationParamQueryQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidationParamQueryQueryParameters():
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
    TResult? Function(_ValidationParamQueryQueryParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidationParamQueryQueryParameters() when $default != null:
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
            @JsonKey(name: ValidationParamQueryQueryParameters.qKey_) String? q,
            @JsonKey(name: ValidationParamQueryQueryParameters.skipKey_)
            int skip,
            @JsonKey(name: ValidationParamQueryQueryParameters.limitKey_)
            int limit)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValidationParamQueryQueryParameters() when $default != null:
        return $default(_that.q, _that.skip, _that.limit);
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
            @JsonKey(name: ValidationParamQueryQueryParameters.qKey_) String? q,
            @JsonKey(name: ValidationParamQueryQueryParameters.skipKey_)
            int skip,
            @JsonKey(name: ValidationParamQueryQueryParameters.limitKey_)
            int limit)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidationParamQueryQueryParameters():
        return $default(_that.q, _that.skip, _that.limit);
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
            @JsonKey(name: ValidationParamQueryQueryParameters.qKey_) String? q,
            @JsonKey(name: ValidationParamQueryQueryParameters.skipKey_)
            int skip,
            @JsonKey(name: ValidationParamQueryQueryParameters.limitKey_)
            int limit)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidationParamQueryQueryParameters() when $default != null:
        return $default(_that.q, _that.skip, _that.limit);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _ValidationParamQueryQueryParameters
    extends ValidationParamQueryQueryParameters {
  const _ValidationParamQueryQueryParameters(
      {@JsonKey(name: ValidationParamQueryQueryParameters.qKey_) this.q,
      @JsonKey(name: ValidationParamQueryQueryParameters.skipKey_)
      this.skip = 0,
      @JsonKey(name: ValidationParamQueryQueryParameters.limitKey_)
      this.limit = 10})
      : super._();
  factory _ValidationParamQueryQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$ValidationParamQueryQueryParametersFromJson(json);

  /// q
  @override
  @JsonKey(name: ValidationParamQueryQueryParameters.qKey_)
  final String? q;

  /// skip
  @override
  @JsonKey(name: ValidationParamQueryQueryParameters.skipKey_)
  final int skip;

  /// limit
  @override
  @JsonKey(name: ValidationParamQueryQueryParameters.limitKey_)
  final int limit;

  /// Create a copy of ValidationParamQueryQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValidationParamQueryQueryParametersCopyWith<
          _ValidationParamQueryQueryParameters>
      get copyWith => __$ValidationParamQueryQueryParametersCopyWithImpl<
          _ValidationParamQueryQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ValidationParamQueryQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValidationParamQueryQueryParameters &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, q, skip, limit);

  @override
  String toString() {
    return 'ValidationParamQueryQueryParameters(q: $q, skip: $skip, limit: $limit)';
  }
}

/// @nodoc
abstract mixin class _$ValidationParamQueryQueryParametersCopyWith<$Res>
    implements $ValidationParamQueryQueryParametersCopyWith<$Res> {
  factory _$ValidationParamQueryQueryParametersCopyWith(
          _ValidationParamQueryQueryParameters value,
          $Res Function(_ValidationParamQueryQueryParameters) _then) =
      __$ValidationParamQueryQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ValidationParamQueryQueryParameters.qKey_) String? q,
      @JsonKey(name: ValidationParamQueryQueryParameters.skipKey_) int skip,
      @JsonKey(name: ValidationParamQueryQueryParameters.limitKey_) int limit});
}

/// @nodoc
class __$ValidationParamQueryQueryParametersCopyWithImpl<$Res>
    implements _$ValidationParamQueryQueryParametersCopyWith<$Res> {
  __$ValidationParamQueryQueryParametersCopyWithImpl(this._self, this._then);

  final _ValidationParamQueryQueryParameters _self;
  final $Res Function(_ValidationParamQueryQueryParameters) _then;

  /// Create a copy of ValidationParamQueryQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? q = freezed,
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(_ValidationParamQueryQueryParameters(
      q: freezed == q
          ? _self.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
      skip: null == skip
          ? _self.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
