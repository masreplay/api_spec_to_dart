// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_lists_api_price_lists_get_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceListsApiPriceListsGetQueryParameters {
  /// enabled
  @JsonKey(name: PriceListsApiPriceListsGetQueryParameters.enabledKey_)
  bool? get enabled;

  /// salePointId
  @JsonKey(name: PriceListsApiPriceListsGetQueryParameters.salePointIdKey_)
  String? get salePointId;

  /// Create a copy of PriceListsApiPriceListsGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PriceListsApiPriceListsGetQueryParametersCopyWith<
          PriceListsApiPriceListsGetQueryParameters>
      get copyWith => _$PriceListsApiPriceListsGetQueryParametersCopyWithImpl<
              PriceListsApiPriceListsGetQueryParameters>(
          this as PriceListsApiPriceListsGetQueryParameters, _$identity);

  /// Serializes this PriceListsApiPriceListsGetQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceListsApiPriceListsGetQueryParameters &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.salePointId, salePointId) ||
                other.salePointId == salePointId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, enabled, salePointId);

  @override
  String toString() {
    return 'PriceListsApiPriceListsGetQueryParameters(enabled: $enabled, salePointId: $salePointId)';
  }
}

/// @nodoc
abstract mixin class $PriceListsApiPriceListsGetQueryParametersCopyWith<$Res> {
  factory $PriceListsApiPriceListsGetQueryParametersCopyWith(
          PriceListsApiPriceListsGetQueryParameters value,
          $Res Function(PriceListsApiPriceListsGetQueryParameters) _then) =
      _$PriceListsApiPriceListsGetQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: PriceListsApiPriceListsGetQueryParameters.enabledKey_)
      bool? enabled,
      @JsonKey(name: PriceListsApiPriceListsGetQueryParameters.salePointIdKey_)
      String? salePointId});
}

/// @nodoc
class _$PriceListsApiPriceListsGetQueryParametersCopyWithImpl<$Res>
    implements $PriceListsApiPriceListsGetQueryParametersCopyWith<$Res> {
  _$PriceListsApiPriceListsGetQueryParametersCopyWithImpl(
      this._self, this._then);

  final PriceListsApiPriceListsGetQueryParameters _self;
  final $Res Function(PriceListsApiPriceListsGetQueryParameters) _then;

  /// Create a copy of PriceListsApiPriceListsGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = freezed,
    Object? salePointId = freezed,
  }) {
    return _then(_self.copyWith(
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      salePointId: freezed == salePointId
          ? _self.salePointId
          : salePointId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PriceListsApiPriceListsGetQueryParameters].
extension PriceListsApiPriceListsGetQueryParametersPatterns
    on PriceListsApiPriceListsGetQueryParameters {
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
    TResult Function(_PriceListsApiPriceListsGetQueryParameters value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PriceListsApiPriceListsGetQueryParameters() when $default != null:
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
    TResult Function(_PriceListsApiPriceListsGetQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListsApiPriceListsGetQueryParameters():
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
    TResult? Function(_PriceListsApiPriceListsGetQueryParameters value)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListsApiPriceListsGetQueryParameters() when $default != null:
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
            @JsonKey(
                name: PriceListsApiPriceListsGetQueryParameters.enabledKey_)
            bool? enabled,
            @JsonKey(
                name: PriceListsApiPriceListsGetQueryParameters.salePointIdKey_)
            String? salePointId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PriceListsApiPriceListsGetQueryParameters() when $default != null:
        return $default(_that.enabled, _that.salePointId);
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
            @JsonKey(
                name: PriceListsApiPriceListsGetQueryParameters.enabledKey_)
            bool? enabled,
            @JsonKey(
                name: PriceListsApiPriceListsGetQueryParameters.salePointIdKey_)
            String? salePointId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListsApiPriceListsGetQueryParameters():
        return $default(_that.enabled, _that.salePointId);
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
            @JsonKey(
                name: PriceListsApiPriceListsGetQueryParameters.enabledKey_)
            bool? enabled,
            @JsonKey(
                name: PriceListsApiPriceListsGetQueryParameters.salePointIdKey_)
            String? salePointId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListsApiPriceListsGetQueryParameters() when $default != null:
        return $default(_that.enabled, _that.salePointId);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PriceListsApiPriceListsGetQueryParameters
    extends PriceListsApiPriceListsGetQueryParameters {
  const _PriceListsApiPriceListsGetQueryParameters(
      {@JsonKey(name: PriceListsApiPriceListsGetQueryParameters.enabledKey_)
      this.enabled,
      @JsonKey(name: PriceListsApiPriceListsGetQueryParameters.salePointIdKey_)
      this.salePointId})
      : super._();
  factory _PriceListsApiPriceListsGetQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$PriceListsApiPriceListsGetQueryParametersFromJson(json);

  /// enabled
  @override
  @JsonKey(name: PriceListsApiPriceListsGetQueryParameters.enabledKey_)
  final bool? enabled;

  /// salePointId
  @override
  @JsonKey(name: PriceListsApiPriceListsGetQueryParameters.salePointIdKey_)
  final String? salePointId;

  /// Create a copy of PriceListsApiPriceListsGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PriceListsApiPriceListsGetQueryParametersCopyWith<
          _PriceListsApiPriceListsGetQueryParameters>
      get copyWith => __$PriceListsApiPriceListsGetQueryParametersCopyWithImpl<
          _PriceListsApiPriceListsGetQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PriceListsApiPriceListsGetQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PriceListsApiPriceListsGetQueryParameters &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.salePointId, salePointId) ||
                other.salePointId == salePointId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, enabled, salePointId);

  @override
  String toString() {
    return 'PriceListsApiPriceListsGetQueryParameters(enabled: $enabled, salePointId: $salePointId)';
  }
}

/// @nodoc
abstract mixin class _$PriceListsApiPriceListsGetQueryParametersCopyWith<$Res>
    implements $PriceListsApiPriceListsGetQueryParametersCopyWith<$Res> {
  factory _$PriceListsApiPriceListsGetQueryParametersCopyWith(
          _PriceListsApiPriceListsGetQueryParameters value,
          $Res Function(_PriceListsApiPriceListsGetQueryParameters) _then) =
      __$PriceListsApiPriceListsGetQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: PriceListsApiPriceListsGetQueryParameters.enabledKey_)
      bool? enabled,
      @JsonKey(name: PriceListsApiPriceListsGetQueryParameters.salePointIdKey_)
      String? salePointId});
}

/// @nodoc
class __$PriceListsApiPriceListsGetQueryParametersCopyWithImpl<$Res>
    implements _$PriceListsApiPriceListsGetQueryParametersCopyWith<$Res> {
  __$PriceListsApiPriceListsGetQueryParametersCopyWithImpl(
      this._self, this._then);

  final _PriceListsApiPriceListsGetQueryParameters _self;
  final $Res Function(_PriceListsApiPriceListsGetQueryParameters) _then;

  /// Create a copy of PriceListsApiPriceListsGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? enabled = freezed,
    Object? salePointId = freezed,
  }) {
    return _then(_PriceListsApiPriceListsGetQueryParameters(
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      salePointId: freezed == salePointId
          ? _self.salePointId
          : salePointId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}
