// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_list_policy_item_product_presentation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceListPolicyItemProductPresentationDto {
  /// productPresentationId
  @JsonKey(
      name: PriceListPolicyItemProductPresentationDto.productPresentationIdKey_)
  String get productPresentationId;

  /// productPresentationName
  @JsonKey(
      name:
          PriceListPolicyItemProductPresentationDto.productPresentationNameKey_)
  String get productPresentationName;

  /// Create a copy of PriceListPolicyItemProductPresentationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PriceListPolicyItemProductPresentationDtoCopyWith<
          PriceListPolicyItemProductPresentationDto>
      get copyWith => _$PriceListPolicyItemProductPresentationDtoCopyWithImpl<
              PriceListPolicyItemProductPresentationDto>(
          this as PriceListPolicyItemProductPresentationDto, _$identity);

  /// Serializes this PriceListPolicyItemProductPresentationDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceListPolicyItemProductPresentationDto &&
            (identical(other.productPresentationId, productPresentationId) ||
                other.productPresentationId == productPresentationId) &&
            (identical(
                    other.productPresentationName, productPresentationName) ||
                other.productPresentationName == productPresentationName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productPresentationId, productPresentationName);

  @override
  String toString() {
    return 'PriceListPolicyItemProductPresentationDto(productPresentationId: $productPresentationId, productPresentationName: $productPresentationName)';
  }
}

/// @nodoc
abstract mixin class $PriceListPolicyItemProductPresentationDtoCopyWith<$Res> {
  factory $PriceListPolicyItemProductPresentationDtoCopyWith(
          PriceListPolicyItemProductPresentationDto value,
          $Res Function(PriceListPolicyItemProductPresentationDto) _then) =
      _$PriceListPolicyItemProductPresentationDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(
          name: PriceListPolicyItemProductPresentationDto
              .productPresentationIdKey_)
      String productPresentationId,
      @JsonKey(
          name: PriceListPolicyItemProductPresentationDto
              .productPresentationNameKey_)
      String productPresentationName});
}

/// @nodoc
class _$PriceListPolicyItemProductPresentationDtoCopyWithImpl<$Res>
    implements $PriceListPolicyItemProductPresentationDtoCopyWith<$Res> {
  _$PriceListPolicyItemProductPresentationDtoCopyWithImpl(
      this._self, this._then);

  final PriceListPolicyItemProductPresentationDto _self;
  final $Res Function(PriceListPolicyItemProductPresentationDto) _then;

  /// Create a copy of PriceListPolicyItemProductPresentationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productPresentationId = null,
    Object? productPresentationName = null,
  }) {
    return _then(_self.copyWith(
      productPresentationId: null == productPresentationId
          ? _self.productPresentationId
          : productPresentationId // ignore: cast_nullable_to_non_nullable
              as String,
      productPresentationName: null == productPresentationName
          ? _self.productPresentationName
          : productPresentationName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [PriceListPolicyItemProductPresentationDto].
extension PriceListPolicyItemProductPresentationDtoPatterns
    on PriceListPolicyItemProductPresentationDto {
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
    TResult Function(_PriceListPolicyItemProductPresentationDto value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PriceListPolicyItemProductPresentationDto() when $default != null:
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
    TResult Function(_PriceListPolicyItemProductPresentationDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListPolicyItemProductPresentationDto():
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
    TResult? Function(_PriceListPolicyItemProductPresentationDto value)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListPolicyItemProductPresentationDto() when $default != null:
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
                name: PriceListPolicyItemProductPresentationDto
                    .productPresentationIdKey_)
            String productPresentationId,
            @JsonKey(
                name: PriceListPolicyItemProductPresentationDto
                    .productPresentationNameKey_)
            String productPresentationName)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PriceListPolicyItemProductPresentationDto() when $default != null:
        return $default(
            _that.productPresentationId, _that.productPresentationName);
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
                name: PriceListPolicyItemProductPresentationDto
                    .productPresentationIdKey_)
            String productPresentationId,
            @JsonKey(
                name: PriceListPolicyItemProductPresentationDto
                    .productPresentationNameKey_)
            String productPresentationName)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListPolicyItemProductPresentationDto():
        return $default(
            _that.productPresentationId, _that.productPresentationName);
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
                name: PriceListPolicyItemProductPresentationDto
                    .productPresentationIdKey_)
            String productPresentationId,
            @JsonKey(
                name: PriceListPolicyItemProductPresentationDto
                    .productPresentationNameKey_)
            String productPresentationName)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListPolicyItemProductPresentationDto() when $default != null:
        return $default(
            _that.productPresentationId, _that.productPresentationName);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PriceListPolicyItemProductPresentationDto
    extends PriceListPolicyItemProductPresentationDto {
  const _PriceListPolicyItemProductPresentationDto(
      {@JsonKey(
          name: PriceListPolicyItemProductPresentationDto
              .productPresentationIdKey_)
      required this.productPresentationId,
      @JsonKey(
          name: PriceListPolicyItemProductPresentationDto
              .productPresentationNameKey_)
      required this.productPresentationName})
      : super._();
  factory _PriceListPolicyItemProductPresentationDto.fromJson(
          Map<String, dynamic> json) =>
      _$PriceListPolicyItemProductPresentationDtoFromJson(json);

  /// productPresentationId
  @override
  @JsonKey(
      name: PriceListPolicyItemProductPresentationDto.productPresentationIdKey_)
  final String productPresentationId;

  /// productPresentationName
  @override
  @JsonKey(
      name:
          PriceListPolicyItemProductPresentationDto.productPresentationNameKey_)
  final String productPresentationName;

  /// Create a copy of PriceListPolicyItemProductPresentationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PriceListPolicyItemProductPresentationDtoCopyWith<
          _PriceListPolicyItemProductPresentationDto>
      get copyWith => __$PriceListPolicyItemProductPresentationDtoCopyWithImpl<
          _PriceListPolicyItemProductPresentationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PriceListPolicyItemProductPresentationDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PriceListPolicyItemProductPresentationDto &&
            (identical(other.productPresentationId, productPresentationId) ||
                other.productPresentationId == productPresentationId) &&
            (identical(
                    other.productPresentationName, productPresentationName) ||
                other.productPresentationName == productPresentationName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productPresentationId, productPresentationName);

  @override
  String toString() {
    return 'PriceListPolicyItemProductPresentationDto(productPresentationId: $productPresentationId, productPresentationName: $productPresentationName)';
  }
}

/// @nodoc
abstract mixin class _$PriceListPolicyItemProductPresentationDtoCopyWith<$Res>
    implements $PriceListPolicyItemProductPresentationDtoCopyWith<$Res> {
  factory _$PriceListPolicyItemProductPresentationDtoCopyWith(
          _PriceListPolicyItemProductPresentationDto value,
          $Res Function(_PriceListPolicyItemProductPresentationDto) _then) =
      __$PriceListPolicyItemProductPresentationDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: PriceListPolicyItemProductPresentationDto
              .productPresentationIdKey_)
      String productPresentationId,
      @JsonKey(
          name: PriceListPolicyItemProductPresentationDto
              .productPresentationNameKey_)
      String productPresentationName});
}

/// @nodoc
class __$PriceListPolicyItemProductPresentationDtoCopyWithImpl<$Res>
    implements _$PriceListPolicyItemProductPresentationDtoCopyWith<$Res> {
  __$PriceListPolicyItemProductPresentationDtoCopyWithImpl(
      this._self, this._then);

  final _PriceListPolicyItemProductPresentationDto _self;
  final $Res Function(_PriceListPolicyItemProductPresentationDto) _then;

  /// Create a copy of PriceListPolicyItemProductPresentationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? productPresentationId = null,
    Object? productPresentationName = null,
  }) {
    return _then(_PriceListPolicyItemProductPresentationDto(
      productPresentationId: null == productPresentationId
          ? _self.productPresentationId
          : productPresentationId // ignore: cast_nullable_to_non_nullable
              as String,
      productPresentationName: null == productPresentationName
          ? _self.productPresentationName
          : productPresentationName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
