// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_api_products_get_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductsApiProductsGetQueryParameters {
  /// pageToken
  @JsonKey(name: ProductsApiProductsGetQueryParameters.pageTokenKey_)
  String? get pageToken;

  /// pageSize
  @JsonKey(name: ProductsApiProductsGetQueryParameters.pageSizeKey_)
  int get pageSize;

  /// categoryId
  @JsonKey(name: ProductsApiProductsGetQueryParameters.categoryIdKey_)
  String? get categoryId;

  /// search
  @JsonKey(name: ProductsApiProductsGetQueryParameters.searchKey_)
  String? get search;

  /// priceListId
  @JsonKey(name: ProductsApiProductsGetQueryParameters.priceListIdKey_)
  String? get priceListId;

  /// replacePrices
  @JsonKey(name: ProductsApiProductsGetQueryParameters.replacePricesKey_)
  bool get replacePrices;

  /// Create a copy of ProductsApiProductsGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductsApiProductsGetQueryParametersCopyWith<
          ProductsApiProductsGetQueryParameters>
      get copyWith => _$ProductsApiProductsGetQueryParametersCopyWithImpl<
              ProductsApiProductsGetQueryParameters>(
          this as ProductsApiProductsGetQueryParameters, _$identity);

  /// Serializes this ProductsApiProductsGetQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductsApiProductsGetQueryParameters &&
            (identical(other.pageToken, pageToken) ||
                other.pageToken == pageToken) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.priceListId, priceListId) ||
                other.priceListId == priceListId) &&
            (identical(other.replacePrices, replacePrices) ||
                other.replacePrices == replacePrices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pageToken, pageSize, categoryId,
      search, priceListId, replacePrices);

  @override
  String toString() {
    return 'ProductsApiProductsGetQueryParameters(pageToken: $pageToken, pageSize: $pageSize, categoryId: $categoryId, search: $search, priceListId: $priceListId, replacePrices: $replacePrices)';
  }
}

/// @nodoc
abstract mixin class $ProductsApiProductsGetQueryParametersCopyWith<$Res> {
  factory $ProductsApiProductsGetQueryParametersCopyWith(
          ProductsApiProductsGetQueryParameters value,
          $Res Function(ProductsApiProductsGetQueryParameters) _then) =
      _$ProductsApiProductsGetQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ProductsApiProductsGetQueryParameters.pageTokenKey_)
      String? pageToken,
      @JsonKey(name: ProductsApiProductsGetQueryParameters.pageSizeKey_)
      int pageSize,
      @JsonKey(name: ProductsApiProductsGetQueryParameters.categoryIdKey_)
      String? categoryId,
      @JsonKey(name: ProductsApiProductsGetQueryParameters.searchKey_)
      String? search,
      @JsonKey(name: ProductsApiProductsGetQueryParameters.priceListIdKey_)
      String? priceListId,
      @JsonKey(name: ProductsApiProductsGetQueryParameters.replacePricesKey_)
      bool replacePrices});
}

/// @nodoc
class _$ProductsApiProductsGetQueryParametersCopyWithImpl<$Res>
    implements $ProductsApiProductsGetQueryParametersCopyWith<$Res> {
  _$ProductsApiProductsGetQueryParametersCopyWithImpl(this._self, this._then);

  final ProductsApiProductsGetQueryParameters _self;
  final $Res Function(ProductsApiProductsGetQueryParameters) _then;

  /// Create a copy of ProductsApiProductsGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageToken = freezed,
    Object? pageSize = null,
    Object? categoryId = freezed,
    Object? search = freezed,
    Object? priceListId = freezed,
    Object? replacePrices = null,
  }) {
    return _then(_self.copyWith(
      pageToken: freezed == pageToken
          ? _self.pageToken
          : pageToken // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: null == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: freezed == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      search: freezed == search
          ? _self.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      priceListId: freezed == priceListId
          ? _self.priceListId
          : priceListId // ignore: cast_nullable_to_non_nullable
              as String?,
      replacePrices: null == replacePrices
          ? _self.replacePrices
          : replacePrices // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProductsApiProductsGetQueryParameters].
extension ProductsApiProductsGetQueryParametersPatterns
    on ProductsApiProductsGetQueryParameters {
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
    TResult Function(_ProductsApiProductsGetQueryParameters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductsApiProductsGetQueryParameters() when $default != null:
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
    TResult Function(_ProductsApiProductsGetQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductsApiProductsGetQueryParameters():
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
    TResult? Function(_ProductsApiProductsGetQueryParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductsApiProductsGetQueryParameters() when $default != null:
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
            @JsonKey(name: ProductsApiProductsGetQueryParameters.pageTokenKey_)
            String? pageToken,
            @JsonKey(name: ProductsApiProductsGetQueryParameters.pageSizeKey_)
            int pageSize,
            @JsonKey(name: ProductsApiProductsGetQueryParameters.categoryIdKey_)
            String? categoryId,
            @JsonKey(name: ProductsApiProductsGetQueryParameters.searchKey_)
            String? search,
            @JsonKey(
                name: ProductsApiProductsGetQueryParameters.priceListIdKey_)
            String? priceListId,
            @JsonKey(
                name: ProductsApiProductsGetQueryParameters.replacePricesKey_)
            bool replacePrices)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductsApiProductsGetQueryParameters() when $default != null:
        return $default(_that.pageToken, _that.pageSize, _that.categoryId,
            _that.search, _that.priceListId, _that.replacePrices);
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
            @JsonKey(name: ProductsApiProductsGetQueryParameters.pageTokenKey_)
            String? pageToken,
            @JsonKey(name: ProductsApiProductsGetQueryParameters.pageSizeKey_)
            int pageSize,
            @JsonKey(name: ProductsApiProductsGetQueryParameters.categoryIdKey_)
            String? categoryId,
            @JsonKey(name: ProductsApiProductsGetQueryParameters.searchKey_)
            String? search,
            @JsonKey(
                name: ProductsApiProductsGetQueryParameters.priceListIdKey_)
            String? priceListId,
            @JsonKey(
                name: ProductsApiProductsGetQueryParameters.replacePricesKey_)
            bool replacePrices)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductsApiProductsGetQueryParameters():
        return $default(_that.pageToken, _that.pageSize, _that.categoryId,
            _that.search, _that.priceListId, _that.replacePrices);
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
            @JsonKey(name: ProductsApiProductsGetQueryParameters.pageTokenKey_)
            String? pageToken,
            @JsonKey(name: ProductsApiProductsGetQueryParameters.pageSizeKey_)
            int pageSize,
            @JsonKey(name: ProductsApiProductsGetQueryParameters.categoryIdKey_)
            String? categoryId,
            @JsonKey(name: ProductsApiProductsGetQueryParameters.searchKey_)
            String? search,
            @JsonKey(
                name: ProductsApiProductsGetQueryParameters.priceListIdKey_)
            String? priceListId,
            @JsonKey(
                name: ProductsApiProductsGetQueryParameters.replacePricesKey_)
            bool replacePrices)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductsApiProductsGetQueryParameters() when $default != null:
        return $default(_that.pageToken, _that.pageSize, _that.categoryId,
            _that.search, _that.priceListId, _that.replacePrices);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _ProductsApiProductsGetQueryParameters
    extends ProductsApiProductsGetQueryParameters {
  const _ProductsApiProductsGetQueryParameters(
      {@JsonKey(name: ProductsApiProductsGetQueryParameters.pageTokenKey_)
      this.pageToken,
      @JsonKey(name: ProductsApiProductsGetQueryParameters.pageSizeKey_)
      this.pageSize = 100,
      @JsonKey(name: ProductsApiProductsGetQueryParameters.categoryIdKey_)
      this.categoryId,
      @JsonKey(name: ProductsApiProductsGetQueryParameters.searchKey_)
      this.search,
      @JsonKey(name: ProductsApiProductsGetQueryParameters.priceListIdKey_)
      this.priceListId,
      @JsonKey(name: ProductsApiProductsGetQueryParameters.replacePricesKey_)
      this.replacePrices = false})
      : super._();
  factory _ProductsApiProductsGetQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$ProductsApiProductsGetQueryParametersFromJson(json);

  /// pageToken
  @override
  @JsonKey(name: ProductsApiProductsGetQueryParameters.pageTokenKey_)
  final String? pageToken;

  /// pageSize
  @override
  @JsonKey(name: ProductsApiProductsGetQueryParameters.pageSizeKey_)
  final int pageSize;

  /// categoryId
  @override
  @JsonKey(name: ProductsApiProductsGetQueryParameters.categoryIdKey_)
  final String? categoryId;

  /// search
  @override
  @JsonKey(name: ProductsApiProductsGetQueryParameters.searchKey_)
  final String? search;

  /// priceListId
  @override
  @JsonKey(name: ProductsApiProductsGetQueryParameters.priceListIdKey_)
  final String? priceListId;

  /// replacePrices
  @override
  @JsonKey(name: ProductsApiProductsGetQueryParameters.replacePricesKey_)
  final bool replacePrices;

  /// Create a copy of ProductsApiProductsGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductsApiProductsGetQueryParametersCopyWith<
          _ProductsApiProductsGetQueryParameters>
      get copyWith => __$ProductsApiProductsGetQueryParametersCopyWithImpl<
          _ProductsApiProductsGetQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductsApiProductsGetQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductsApiProductsGetQueryParameters &&
            (identical(other.pageToken, pageToken) ||
                other.pageToken == pageToken) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.priceListId, priceListId) ||
                other.priceListId == priceListId) &&
            (identical(other.replacePrices, replacePrices) ||
                other.replacePrices == replacePrices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pageToken, pageSize, categoryId,
      search, priceListId, replacePrices);

  @override
  String toString() {
    return 'ProductsApiProductsGetQueryParameters(pageToken: $pageToken, pageSize: $pageSize, categoryId: $categoryId, search: $search, priceListId: $priceListId, replacePrices: $replacePrices)';
  }
}

/// @nodoc
abstract mixin class _$ProductsApiProductsGetQueryParametersCopyWith<$Res>
    implements $ProductsApiProductsGetQueryParametersCopyWith<$Res> {
  factory _$ProductsApiProductsGetQueryParametersCopyWith(
          _ProductsApiProductsGetQueryParameters value,
          $Res Function(_ProductsApiProductsGetQueryParameters) _then) =
      __$ProductsApiProductsGetQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ProductsApiProductsGetQueryParameters.pageTokenKey_)
      String? pageToken,
      @JsonKey(name: ProductsApiProductsGetQueryParameters.pageSizeKey_)
      int pageSize,
      @JsonKey(name: ProductsApiProductsGetQueryParameters.categoryIdKey_)
      String? categoryId,
      @JsonKey(name: ProductsApiProductsGetQueryParameters.searchKey_)
      String? search,
      @JsonKey(name: ProductsApiProductsGetQueryParameters.priceListIdKey_)
      String? priceListId,
      @JsonKey(name: ProductsApiProductsGetQueryParameters.replacePricesKey_)
      bool replacePrices});
}

/// @nodoc
class __$ProductsApiProductsGetQueryParametersCopyWithImpl<$Res>
    implements _$ProductsApiProductsGetQueryParametersCopyWith<$Res> {
  __$ProductsApiProductsGetQueryParametersCopyWithImpl(this._self, this._then);

  final _ProductsApiProductsGetQueryParameters _self;
  final $Res Function(_ProductsApiProductsGetQueryParameters) _then;

  /// Create a copy of ProductsApiProductsGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pageToken = freezed,
    Object? pageSize = null,
    Object? categoryId = freezed,
    Object? search = freezed,
    Object? priceListId = freezed,
    Object? replacePrices = null,
  }) {
    return _then(_ProductsApiProductsGetQueryParameters(
      pageToken: freezed == pageToken
          ? _self.pageToken
          : pageToken // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: null == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: freezed == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      search: freezed == search
          ? _self.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      priceListId: freezed == priceListId
          ? _self.priceListId
          : priceListId // ignore: cast_nullable_to_non_nullable
              as String?,
      replacePrices: null == replacePrices
          ? _self.replacePrices
          : replacePrices // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}
