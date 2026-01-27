// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_dto_paged_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductDtoPagedResult {
  /// items
  @JsonKey(name: ProductDtoPagedResult.itemsKey_)
  List<ProductDto> get items;

  /// nextPageToken
  @JsonKey(name: ProductDtoPagedResult.nextPageTokenKey_)
  String? get nextPageToken;

  /// Create a copy of ProductDtoPagedResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductDtoPagedResultCopyWith<ProductDtoPagedResult> get copyWith =>
      _$ProductDtoPagedResultCopyWithImpl<ProductDtoPagedResult>(
          this as ProductDtoPagedResult, _$identity);

  /// Serializes this ProductDtoPagedResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductDtoPagedResult &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.nextPageToken, nextPageToken) ||
                other.nextPageToken == nextPageToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(items), nextPageToken);

  @override
  String toString() {
    return 'ProductDtoPagedResult(items: $items, nextPageToken: $nextPageToken)';
  }
}

/// @nodoc
abstract mixin class $ProductDtoPagedResultCopyWith<$Res> {
  factory $ProductDtoPagedResultCopyWith(ProductDtoPagedResult value,
          $Res Function(ProductDtoPagedResult) _then) =
      _$ProductDtoPagedResultCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ProductDtoPagedResult.itemsKey_) List<ProductDto> items,
      @JsonKey(name: ProductDtoPagedResult.nextPageTokenKey_)
      String? nextPageToken});
}

/// @nodoc
class _$ProductDtoPagedResultCopyWithImpl<$Res>
    implements $ProductDtoPagedResultCopyWith<$Res> {
  _$ProductDtoPagedResultCopyWithImpl(this._self, this._then);

  final ProductDtoPagedResult _self;
  final $Res Function(ProductDtoPagedResult) _then;

  /// Create a copy of ProductDtoPagedResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextPageToken = freezed,
  }) {
    return _then(_self.copyWith(
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductDto>,
      nextPageToken: freezed == nextPageToken
          ? _self.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProductDtoPagedResult].
extension ProductDtoPagedResultPatterns on ProductDtoPagedResult {
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
    TResult Function(_ProductDtoPagedResult value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductDtoPagedResult() when $default != null:
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
    TResult Function(_ProductDtoPagedResult value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductDtoPagedResult():
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
    TResult? Function(_ProductDtoPagedResult value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductDtoPagedResult() when $default != null:
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
            @JsonKey(name: ProductDtoPagedResult.itemsKey_)
            List<ProductDto> items,
            @JsonKey(name: ProductDtoPagedResult.nextPageTokenKey_)
            String? nextPageToken)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductDtoPagedResult() when $default != null:
        return $default(_that.items, _that.nextPageToken);
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
            @JsonKey(name: ProductDtoPagedResult.itemsKey_)
            List<ProductDto> items,
            @JsonKey(name: ProductDtoPagedResult.nextPageTokenKey_)
            String? nextPageToken)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductDtoPagedResult():
        return $default(_that.items, _that.nextPageToken);
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
            @JsonKey(name: ProductDtoPagedResult.itemsKey_)
            List<ProductDto> items,
            @JsonKey(name: ProductDtoPagedResult.nextPageTokenKey_)
            String? nextPageToken)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductDtoPagedResult() when $default != null:
        return $default(_that.items, _that.nextPageToken);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _ProductDtoPagedResult extends ProductDtoPagedResult {
  const _ProductDtoPagedResult(
      {@JsonKey(name: ProductDtoPagedResult.itemsKey_)
      required final List<ProductDto> items,
      @JsonKey(name: ProductDtoPagedResult.nextPageTokenKey_)
      this.nextPageToken})
      : _items = items,
        super._();
  factory _ProductDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoPagedResultFromJson(json);

  /// items
  final List<ProductDto> _items;

  /// items
  @override
  @JsonKey(name: ProductDtoPagedResult.itemsKey_)
  List<ProductDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// nextPageToken
  @override
  @JsonKey(name: ProductDtoPagedResult.nextPageTokenKey_)
  final String? nextPageToken;

  /// Create a copy of ProductDtoPagedResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductDtoPagedResultCopyWith<_ProductDtoPagedResult> get copyWith =>
      __$ProductDtoPagedResultCopyWithImpl<_ProductDtoPagedResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductDtoPagedResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductDtoPagedResult &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.nextPageToken, nextPageToken) ||
                other.nextPageToken == nextPageToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), nextPageToken);

  @override
  String toString() {
    return 'ProductDtoPagedResult(items: $items, nextPageToken: $nextPageToken)';
  }
}

/// @nodoc
abstract mixin class _$ProductDtoPagedResultCopyWith<$Res>
    implements $ProductDtoPagedResultCopyWith<$Res> {
  factory _$ProductDtoPagedResultCopyWith(_ProductDtoPagedResult value,
          $Res Function(_ProductDtoPagedResult) _then) =
      __$ProductDtoPagedResultCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ProductDtoPagedResult.itemsKey_) List<ProductDto> items,
      @JsonKey(name: ProductDtoPagedResult.nextPageTokenKey_)
      String? nextPageToken});
}

/// @nodoc
class __$ProductDtoPagedResultCopyWithImpl<$Res>
    implements _$ProductDtoPagedResultCopyWith<$Res> {
  __$ProductDtoPagedResultCopyWithImpl(this._self, this._then);

  final _ProductDtoPagedResult _self;
  final $Res Function(_ProductDtoPagedResult) _then;

  /// Create a copy of ProductDtoPagedResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = null,
    Object? nextPageToken = freezed,
  }) {
    return _then(_ProductDtoPagedResult(
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductDto>,
      nextPageToken: freezed == nextPageToken
          ? _self.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}
