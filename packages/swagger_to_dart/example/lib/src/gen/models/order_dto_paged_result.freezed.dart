// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_dto_paged_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderDtoPagedResult {
  /// items
  @JsonKey(name: OrderDtoPagedResult.itemsKey_)
  List<OrderDto> get items;

  /// nextPageToken
  @JsonKey(name: OrderDtoPagedResult.nextPageTokenKey_)
  String? get nextPageToken;

  /// Create a copy of OrderDtoPagedResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderDtoPagedResultCopyWith<OrderDtoPagedResult> get copyWith =>
      _$OrderDtoPagedResultCopyWithImpl<OrderDtoPagedResult>(
          this as OrderDtoPagedResult, _$identity);

  /// Serializes this OrderDtoPagedResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderDtoPagedResult &&
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
    return 'OrderDtoPagedResult(items: $items, nextPageToken: $nextPageToken)';
  }
}

/// @nodoc
abstract mixin class $OrderDtoPagedResultCopyWith<$Res> {
  factory $OrderDtoPagedResultCopyWith(
          OrderDtoPagedResult value, $Res Function(OrderDtoPagedResult) _then) =
      _$OrderDtoPagedResultCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: OrderDtoPagedResult.itemsKey_) List<OrderDto> items,
      @JsonKey(name: OrderDtoPagedResult.nextPageTokenKey_)
      String? nextPageToken});
}

/// @nodoc
class _$OrderDtoPagedResultCopyWithImpl<$Res>
    implements $OrderDtoPagedResultCopyWith<$Res> {
  _$OrderDtoPagedResultCopyWithImpl(this._self, this._then);

  final OrderDtoPagedResult _self;
  final $Res Function(OrderDtoPagedResult) _then;

  /// Create a copy of OrderDtoPagedResult
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
              as List<OrderDto>,
      nextPageToken: freezed == nextPageToken
          ? _self.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrderDtoPagedResult].
extension OrderDtoPagedResultPatterns on OrderDtoPagedResult {
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
    TResult Function(_OrderDtoPagedResult value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderDtoPagedResult() when $default != null:
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
    TResult Function(_OrderDtoPagedResult value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderDtoPagedResult():
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
    TResult? Function(_OrderDtoPagedResult value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderDtoPagedResult() when $default != null:
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
            @JsonKey(name: OrderDtoPagedResult.itemsKey_) List<OrderDto> items,
            @JsonKey(name: OrderDtoPagedResult.nextPageTokenKey_)
            String? nextPageToken)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderDtoPagedResult() when $default != null:
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
            @JsonKey(name: OrderDtoPagedResult.itemsKey_) List<OrderDto> items,
            @JsonKey(name: OrderDtoPagedResult.nextPageTokenKey_)
            String? nextPageToken)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderDtoPagedResult():
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
            @JsonKey(name: OrderDtoPagedResult.itemsKey_) List<OrderDto> items,
            @JsonKey(name: OrderDtoPagedResult.nextPageTokenKey_)
            String? nextPageToken)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderDtoPagedResult() when $default != null:
        return $default(_that.items, _that.nextPageToken);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _OrderDtoPagedResult extends OrderDtoPagedResult {
  const _OrderDtoPagedResult(
      {@JsonKey(name: OrderDtoPagedResult.itemsKey_)
      required final List<OrderDto> items,
      @JsonKey(name: OrderDtoPagedResult.nextPageTokenKey_) this.nextPageToken})
      : _items = items,
        super._();
  factory _OrderDtoPagedResult.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoPagedResultFromJson(json);

  /// items
  final List<OrderDto> _items;

  /// items
  @override
  @JsonKey(name: OrderDtoPagedResult.itemsKey_)
  List<OrderDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// nextPageToken
  @override
  @JsonKey(name: OrderDtoPagedResult.nextPageTokenKey_)
  final String? nextPageToken;

  /// Create a copy of OrderDtoPagedResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderDtoPagedResultCopyWith<_OrderDtoPagedResult> get copyWith =>
      __$OrderDtoPagedResultCopyWithImpl<_OrderDtoPagedResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderDtoPagedResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderDtoPagedResult &&
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
    return 'OrderDtoPagedResult(items: $items, nextPageToken: $nextPageToken)';
  }
}

/// @nodoc
abstract mixin class _$OrderDtoPagedResultCopyWith<$Res>
    implements $OrderDtoPagedResultCopyWith<$Res> {
  factory _$OrderDtoPagedResultCopyWith(_OrderDtoPagedResult value,
          $Res Function(_OrderDtoPagedResult) _then) =
      __$OrderDtoPagedResultCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: OrderDtoPagedResult.itemsKey_) List<OrderDto> items,
      @JsonKey(name: OrderDtoPagedResult.nextPageTokenKey_)
      String? nextPageToken});
}

/// @nodoc
class __$OrderDtoPagedResultCopyWithImpl<$Res>
    implements _$OrderDtoPagedResultCopyWith<$Res> {
  __$OrderDtoPagedResultCopyWithImpl(this._self, this._then);

  final _OrderDtoPagedResult _self;
  final $Res Function(_OrderDtoPagedResult) _then;

  /// Create a copy of OrderDtoPagedResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = null,
    Object? nextPageToken = freezed,
  }) {
    return _then(_OrderDtoPagedResult(
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderDto>,
      nextPageToken: freezed == nextPageToken
          ? _self.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}
