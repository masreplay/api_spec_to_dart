// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_price_list_policy_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePriceListPolicyItemDto {
  /// productId
  @JsonKey(name: CreatePriceListPolicyItemDto.productIdKey_)
  String get productId;

  /// productPresentationId
  @JsonKey(name: CreatePriceListPolicyItemDto.productPresentationIdKey_)
  String get productPresentationId;

  /// Create a copy of CreatePriceListPolicyItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreatePriceListPolicyItemDtoCopyWith<CreatePriceListPolicyItemDto>
      get copyWith => _$CreatePriceListPolicyItemDtoCopyWithImpl<
              CreatePriceListPolicyItemDto>(
          this as CreatePriceListPolicyItemDto, _$identity);

  /// Serializes this CreatePriceListPolicyItemDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatePriceListPolicyItemDto &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productPresentationId, productPresentationId) ||
                other.productPresentationId == productPresentationId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, productPresentationId);

  @override
  String toString() {
    return 'CreatePriceListPolicyItemDto(productId: $productId, productPresentationId: $productPresentationId)';
  }
}

/// @nodoc
abstract mixin class $CreatePriceListPolicyItemDtoCopyWith<$Res> {
  factory $CreatePriceListPolicyItemDtoCopyWith(
          CreatePriceListPolicyItemDto value,
          $Res Function(CreatePriceListPolicyItemDto) _then) =
      _$CreatePriceListPolicyItemDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CreatePriceListPolicyItemDto.productIdKey_)
      String productId,
      @JsonKey(name: CreatePriceListPolicyItemDto.productPresentationIdKey_)
      String productPresentationId});
}

/// @nodoc
class _$CreatePriceListPolicyItemDtoCopyWithImpl<$Res>
    implements $CreatePriceListPolicyItemDtoCopyWith<$Res> {
  _$CreatePriceListPolicyItemDtoCopyWithImpl(this._self, this._then);

  final CreatePriceListPolicyItemDto _self;
  final $Res Function(CreatePriceListPolicyItemDto) _then;

  /// Create a copy of CreatePriceListPolicyItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productPresentationId = null,
  }) {
    return _then(_self.copyWith(
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productPresentationId: null == productPresentationId
          ? _self.productPresentationId
          : productPresentationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreatePriceListPolicyItemDto].
extension CreatePriceListPolicyItemDtoPatterns on CreatePriceListPolicyItemDto {
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
    TResult Function(_CreatePriceListPolicyItemDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePriceListPolicyItemDto() when $default != null:
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
    TResult Function(_CreatePriceListPolicyItemDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePriceListPolicyItemDto():
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
    TResult? Function(_CreatePriceListPolicyItemDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePriceListPolicyItemDto() when $default != null:
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
            @JsonKey(name: CreatePriceListPolicyItemDto.productIdKey_)
            String productId,
            @JsonKey(
                name: CreatePriceListPolicyItemDto.productPresentationIdKey_)
            String productPresentationId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePriceListPolicyItemDto() when $default != null:
        return $default(_that.productId, _that.productPresentationId);
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
            @JsonKey(name: CreatePriceListPolicyItemDto.productIdKey_)
            String productId,
            @JsonKey(
                name: CreatePriceListPolicyItemDto.productPresentationIdKey_)
            String productPresentationId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePriceListPolicyItemDto():
        return $default(_that.productId, _that.productPresentationId);
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
            @JsonKey(name: CreatePriceListPolicyItemDto.productIdKey_)
            String productId,
            @JsonKey(
                name: CreatePriceListPolicyItemDto.productPresentationIdKey_)
            String productPresentationId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePriceListPolicyItemDto() when $default != null:
        return $default(_that.productId, _that.productPresentationId);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _CreatePriceListPolicyItemDto extends CreatePriceListPolicyItemDto {
  const _CreatePriceListPolicyItemDto(
      {@JsonKey(name: CreatePriceListPolicyItemDto.productIdKey_)
      required this.productId,
      @JsonKey(name: CreatePriceListPolicyItemDto.productPresentationIdKey_)
      required this.productPresentationId})
      : super._();
  factory _CreatePriceListPolicyItemDto.fromJson(Map<String, dynamic> json) =>
      _$CreatePriceListPolicyItemDtoFromJson(json);

  /// productId
  @override
  @JsonKey(name: CreatePriceListPolicyItemDto.productIdKey_)
  final String productId;

  /// productPresentationId
  @override
  @JsonKey(name: CreatePriceListPolicyItemDto.productPresentationIdKey_)
  final String productPresentationId;

  /// Create a copy of CreatePriceListPolicyItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreatePriceListPolicyItemDtoCopyWith<_CreatePriceListPolicyItemDto>
      get copyWith => __$CreatePriceListPolicyItemDtoCopyWithImpl<
          _CreatePriceListPolicyItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreatePriceListPolicyItemDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePriceListPolicyItemDto &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productPresentationId, productPresentationId) ||
                other.productPresentationId == productPresentationId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, productPresentationId);

  @override
  String toString() {
    return 'CreatePriceListPolicyItemDto(productId: $productId, productPresentationId: $productPresentationId)';
  }
}

/// @nodoc
abstract mixin class _$CreatePriceListPolicyItemDtoCopyWith<$Res>
    implements $CreatePriceListPolicyItemDtoCopyWith<$Res> {
  factory _$CreatePriceListPolicyItemDtoCopyWith(
          _CreatePriceListPolicyItemDto value,
          $Res Function(_CreatePriceListPolicyItemDto) _then) =
      __$CreatePriceListPolicyItemDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CreatePriceListPolicyItemDto.productIdKey_)
      String productId,
      @JsonKey(name: CreatePriceListPolicyItemDto.productPresentationIdKey_)
      String productPresentationId});
}

/// @nodoc
class __$CreatePriceListPolicyItemDtoCopyWithImpl<$Res>
    implements _$CreatePriceListPolicyItemDtoCopyWith<$Res> {
  __$CreatePriceListPolicyItemDtoCopyWithImpl(this._self, this._then);

  final _CreatePriceListPolicyItemDto _self;
  final $Res Function(_CreatePriceListPolicyItemDto) _then;

  /// Create a copy of CreatePriceListPolicyItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? productId = null,
    Object? productPresentationId = null,
  }) {
    return _then(_CreatePriceListPolicyItemDto(
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productPresentationId: null == productPresentationId
          ? _self.productPresentationId
          : productPresentationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
