// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_list_policy_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceListPolicyItemDto {
  /// productId
  @JsonKey(name: PriceListPolicyItemDto.productIdKey_)
  String get productId;

  /// productName
  @JsonKey(name: PriceListPolicyItemDto.productNameKey_)
  String get productName;

  /// productPresentations
  @JsonKey(name: PriceListPolicyItemDto.productPresentationsKey_)
  List<PriceListPolicyItemProductPresentationDto> get productPresentations;

  /// Create a copy of PriceListPolicyItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PriceListPolicyItemDtoCopyWith<PriceListPolicyItemDto> get copyWith =>
      _$PriceListPolicyItemDtoCopyWithImpl<PriceListPolicyItemDto>(
          this as PriceListPolicyItemDto, _$identity);

  /// Serializes this PriceListPolicyItemDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceListPolicyItemDto &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            const DeepCollectionEquality()
                .equals(other.productPresentations, productPresentations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productId, productName,
      const DeepCollectionEquality().hash(productPresentations));

  @override
  String toString() {
    return 'PriceListPolicyItemDto(productId: $productId, productName: $productName, productPresentations: $productPresentations)';
  }
}

/// @nodoc
abstract mixin class $PriceListPolicyItemDtoCopyWith<$Res> {
  factory $PriceListPolicyItemDtoCopyWith(PriceListPolicyItemDto value,
          $Res Function(PriceListPolicyItemDto) _then) =
      _$PriceListPolicyItemDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: PriceListPolicyItemDto.productIdKey_) String productId,
      @JsonKey(name: PriceListPolicyItemDto.productNameKey_) String productName,
      @JsonKey(name: PriceListPolicyItemDto.productPresentationsKey_)
      List<PriceListPolicyItemProductPresentationDto> productPresentations});
}

/// @nodoc
class _$PriceListPolicyItemDtoCopyWithImpl<$Res>
    implements $PriceListPolicyItemDtoCopyWith<$Res> {
  _$PriceListPolicyItemDtoCopyWithImpl(this._self, this._then);

  final PriceListPolicyItemDto _self;
  final $Res Function(PriceListPolicyItemDto) _then;

  /// Create a copy of PriceListPolicyItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? productPresentations = null,
  }) {
    return _then(_self.copyWith(
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _self.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productPresentations: null == productPresentations
          ? _self.productPresentations
          : productPresentations // ignore: cast_nullable_to_non_nullable
              as List<PriceListPolicyItemProductPresentationDto>,
    ));
  }
}

/// Adds pattern-matching-related methods to [PriceListPolicyItemDto].
extension PriceListPolicyItemDtoPatterns on PriceListPolicyItemDto {
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
    TResult Function(_PriceListPolicyItemDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PriceListPolicyItemDto() when $default != null:
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
    TResult Function(_PriceListPolicyItemDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListPolicyItemDto():
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
    TResult? Function(_PriceListPolicyItemDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListPolicyItemDto() when $default != null:
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
            @JsonKey(name: PriceListPolicyItemDto.productIdKey_)
            String productId,
            @JsonKey(name: PriceListPolicyItemDto.productNameKey_)
            String productName,
            @JsonKey(name: PriceListPolicyItemDto.productPresentationsKey_)
            List<PriceListPolicyItemProductPresentationDto>
                productPresentations)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PriceListPolicyItemDto() when $default != null:
        return $default(
            _that.productId, _that.productName, _that.productPresentations);
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
            @JsonKey(name: PriceListPolicyItemDto.productIdKey_)
            String productId,
            @JsonKey(name: PriceListPolicyItemDto.productNameKey_)
            String productName,
            @JsonKey(name: PriceListPolicyItemDto.productPresentationsKey_)
            List<PriceListPolicyItemProductPresentationDto>
                productPresentations)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListPolicyItemDto():
        return $default(
            _that.productId, _that.productName, _that.productPresentations);
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
            @JsonKey(name: PriceListPolicyItemDto.productIdKey_)
            String productId,
            @JsonKey(name: PriceListPolicyItemDto.productNameKey_)
            String productName,
            @JsonKey(name: PriceListPolicyItemDto.productPresentationsKey_)
            List<PriceListPolicyItemProductPresentationDto>
                productPresentations)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListPolicyItemDto() when $default != null:
        return $default(
            _that.productId, _that.productName, _that.productPresentations);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PriceListPolicyItemDto extends PriceListPolicyItemDto {
  const _PriceListPolicyItemDto(
      {@JsonKey(name: PriceListPolicyItemDto.productIdKey_)
      required this.productId,
      @JsonKey(name: PriceListPolicyItemDto.productNameKey_)
      required this.productName,
      @JsonKey(name: PriceListPolicyItemDto.productPresentationsKey_)
      required final List<PriceListPolicyItemProductPresentationDto>
          productPresentations})
      : _productPresentations = productPresentations,
        super._();
  factory _PriceListPolicyItemDto.fromJson(Map<String, dynamic> json) =>
      _$PriceListPolicyItemDtoFromJson(json);

  /// productId
  @override
  @JsonKey(name: PriceListPolicyItemDto.productIdKey_)
  final String productId;

  /// productName
  @override
  @JsonKey(name: PriceListPolicyItemDto.productNameKey_)
  final String productName;

  /// productPresentations
  final List<PriceListPolicyItemProductPresentationDto> _productPresentations;

  /// productPresentations
  @override
  @JsonKey(name: PriceListPolicyItemDto.productPresentationsKey_)
  List<PriceListPolicyItemProductPresentationDto> get productPresentations {
    if (_productPresentations is EqualUnmodifiableListView)
      return _productPresentations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productPresentations);
  }

  /// Create a copy of PriceListPolicyItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PriceListPolicyItemDtoCopyWith<_PriceListPolicyItemDto> get copyWith =>
      __$PriceListPolicyItemDtoCopyWithImpl<_PriceListPolicyItemDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PriceListPolicyItemDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PriceListPolicyItemDto &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            const DeepCollectionEquality()
                .equals(other._productPresentations, _productPresentations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productId, productName,
      const DeepCollectionEquality().hash(_productPresentations));

  @override
  String toString() {
    return 'PriceListPolicyItemDto(productId: $productId, productName: $productName, productPresentations: $productPresentations)';
  }
}

/// @nodoc
abstract mixin class _$PriceListPolicyItemDtoCopyWith<$Res>
    implements $PriceListPolicyItemDtoCopyWith<$Res> {
  factory _$PriceListPolicyItemDtoCopyWith(_PriceListPolicyItemDto value,
          $Res Function(_PriceListPolicyItemDto) _then) =
      __$PriceListPolicyItemDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: PriceListPolicyItemDto.productIdKey_) String productId,
      @JsonKey(name: PriceListPolicyItemDto.productNameKey_) String productName,
      @JsonKey(name: PriceListPolicyItemDto.productPresentationsKey_)
      List<PriceListPolicyItemProductPresentationDto> productPresentations});
}

/// @nodoc
class __$PriceListPolicyItemDtoCopyWithImpl<$Res>
    implements _$PriceListPolicyItemDtoCopyWith<$Res> {
  __$PriceListPolicyItemDtoCopyWithImpl(this._self, this._then);

  final _PriceListPolicyItemDto _self;
  final $Res Function(_PriceListPolicyItemDto) _then;

  /// Create a copy of PriceListPolicyItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? productPresentations = null,
  }) {
    return _then(_PriceListPolicyItemDto(
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _self.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productPresentations: null == productPresentations
          ? _self._productPresentations
          : productPresentations // ignore: cast_nullable_to_non_nullable
              as List<PriceListPolicyItemProductPresentationDto>,
    ));
  }
}
