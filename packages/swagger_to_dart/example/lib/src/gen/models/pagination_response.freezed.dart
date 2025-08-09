// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginationResponse<T> {
  /// items
  @JsonKey(name: PaginationResponse.itemsKey)
  List<T> get items;

  /// total
  @JsonKey(name: PaginationResponse.totalKey)
  int get total;

  /// page
  @JsonKey(name: PaginationResponse.pageKey)
  int get page;

  /// perPage
  @JsonKey(name: PaginationResponse.perPageKey)
  int get perPage;

  /// totalPages
  @JsonKey(name: PaginationResponse.totalPagesKey)
  int get totalPages;

  /// Create a copy of PaginationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaginationResponseCopyWith<T, PaginationResponse<T>> get copyWith =>
      _$PaginationResponseCopyWithImpl<T, PaginationResponse<T>>(
          this as PaginationResponse<T>, _$identity);

  /// Serializes this PaginationResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaginationResponse<T> &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      total,
      page,
      perPage,
      totalPages);

  @override
  String toString() {
    return 'PaginationResponse<$T>(items: $items, total: $total, page: $page, perPage: $perPage, totalPages: $totalPages)';
  }
}

/// @nodoc
abstract mixin class $PaginationResponseCopyWith<T, $Res> {
  factory $PaginationResponseCopyWith(PaginationResponse<T> value,
          $Res Function(PaginationResponse<T>) _then) =
      _$PaginationResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: PaginationResponse.itemsKey) List<T> items,
      @JsonKey(name: PaginationResponse.totalKey) int total,
      @JsonKey(name: PaginationResponse.pageKey) int page,
      @JsonKey(name: PaginationResponse.perPageKey) int perPage,
      @JsonKey(name: PaginationResponse.totalPagesKey) int totalPages});
}

/// @nodoc
class _$PaginationResponseCopyWithImpl<T, $Res>
    implements $PaginationResponseCopyWith<T, $Res> {
  _$PaginationResponseCopyWithImpl(this._self, this._then);

  final PaginationResponse<T> _self;
  final $Res Function(PaginationResponse<T>) _then;

  /// Create a copy of PaginationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? page = null,
    Object? perPage = null,
    Object? totalPages = null,
  }) {
    return _then(_self.copyWith(
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [PaginationResponse].
extension PaginationResponsePatterns<T> on PaginationResponse<T> {
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
    TResult Function(_PaginationResponse<T> value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginationResponse() when $default != null:
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
    TResult Function(_PaginationResponse<T> value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginationResponse():
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
    TResult? Function(_PaginationResponse<T> value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginationResponse() when $default != null:
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
            @JsonKey(name: PaginationResponse.itemsKey) List<T> items,
            @JsonKey(name: PaginationResponse.totalKey) int total,
            @JsonKey(name: PaginationResponse.pageKey) int page,
            @JsonKey(name: PaginationResponse.perPageKey) int perPage,
            @JsonKey(name: PaginationResponse.totalPagesKey) int totalPages)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginationResponse() when $default != null:
        return $default(_that.items, _that.total, _that.page, _that.perPage,
            _that.totalPages);
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
            @JsonKey(name: PaginationResponse.itemsKey) List<T> items,
            @JsonKey(name: PaginationResponse.totalKey) int total,
            @JsonKey(name: PaginationResponse.pageKey) int page,
            @JsonKey(name: PaginationResponse.perPageKey) int perPage,
            @JsonKey(name: PaginationResponse.totalPagesKey) int totalPages)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginationResponse():
        return $default(_that.items, _that.total, _that.page, _that.perPage,
            _that.totalPages);
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
            @JsonKey(name: PaginationResponse.itemsKey) List<T> items,
            @JsonKey(name: PaginationResponse.totalKey) int total,
            @JsonKey(name: PaginationResponse.pageKey) int page,
            @JsonKey(name: PaginationResponse.perPageKey) int perPage,
            @JsonKey(name: PaginationResponse.totalPagesKey) int totalPages)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginationResponse() when $default != null:
        return $default(_that.items, _that.total, _that.page, _that.perPage,
            _that.totalPages);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(
    converters: jsonSerializableConverters, genericArgumentFactories: true)
class _PaginationResponse<T> extends PaginationResponse<T> {
  const _PaginationResponse(
      {@JsonKey(name: PaginationResponse.itemsKey) required final List<T> items,
      @JsonKey(name: PaginationResponse.totalKey) required this.total,
      @JsonKey(name: PaginationResponse.pageKey) required this.page,
      @JsonKey(name: PaginationResponse.perPageKey) required this.perPage,
      @JsonKey(name: PaginationResponse.totalPagesKey)
      required this.totalPages})
      : _items = items,
        super._();
  factory _PaginationResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$PaginationResponseFromJson(json, fromJsonT);

  /// items
  final List<T> _items;

  /// items
  @override
  @JsonKey(name: PaginationResponse.itemsKey)
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// total
  @override
  @JsonKey(name: PaginationResponse.totalKey)
  final int total;

  /// page
  @override
  @JsonKey(name: PaginationResponse.pageKey)
  final int page;

  /// perPage
  @override
  @JsonKey(name: PaginationResponse.perPageKey)
  final int perPage;

  /// totalPages
  @override
  @JsonKey(name: PaginationResponse.totalPagesKey)
  final int totalPages;

  /// Create a copy of PaginationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaginationResponseCopyWith<T, _PaginationResponse<T>> get copyWith =>
      __$PaginationResponseCopyWithImpl<T, _PaginationResponse<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$PaginationResponseToJson<T>(this, toJsonT);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginationResponse<T> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      total,
      page,
      perPage,
      totalPages);

  @override
  String toString() {
    return 'PaginationResponse<$T>(items: $items, total: $total, page: $page, perPage: $perPage, totalPages: $totalPages)';
  }
}

/// @nodoc
abstract mixin class _$PaginationResponseCopyWith<T, $Res>
    implements $PaginationResponseCopyWith<T, $Res> {
  factory _$PaginationResponseCopyWith(_PaginationResponse<T> value,
          $Res Function(_PaginationResponse<T>) _then) =
      __$PaginationResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: PaginationResponse.itemsKey) List<T> items,
      @JsonKey(name: PaginationResponse.totalKey) int total,
      @JsonKey(name: PaginationResponse.pageKey) int page,
      @JsonKey(name: PaginationResponse.perPageKey) int perPage,
      @JsonKey(name: PaginationResponse.totalPagesKey) int totalPages});
}

/// @nodoc
class __$PaginationResponseCopyWithImpl<T, $Res>
    implements _$PaginationResponseCopyWith<T, $Res> {
  __$PaginationResponseCopyWithImpl(this._self, this._then);

  final _PaginationResponse<T> _self;
  final $Res Function(_PaginationResponse<T>) _then;

  /// Create a copy of PaginationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? page = null,
    Object? perPage = null,
    Object? totalPages = null,
  }) {
    return _then(_PaginationResponse<T>(
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
