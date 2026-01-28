// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_category_ref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductCategoryRef {
  /// id
  @JsonKey(name: ProductCategoryRef.idKey_)
  String get id;

  /// name
  @JsonKey(name: ProductCategoryRef.nameKey_)
  String get name;

  /// Create a copy of ProductCategoryRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductCategoryRefCopyWith<ProductCategoryRef> get copyWith =>
      _$ProductCategoryRefCopyWithImpl<ProductCategoryRef>(
          this as ProductCategoryRef, _$identity);

  /// Serializes this ProductCategoryRef to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductCategoryRef &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'ProductCategoryRef(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $ProductCategoryRefCopyWith<$Res> {
  factory $ProductCategoryRefCopyWith(
          ProductCategoryRef value, $Res Function(ProductCategoryRef) _then) =
      _$ProductCategoryRefCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ProductCategoryRef.idKey_) String id,
      @JsonKey(name: ProductCategoryRef.nameKey_) String name});
}

/// @nodoc
class _$ProductCategoryRefCopyWithImpl<$Res>
    implements $ProductCategoryRefCopyWith<$Res> {
  _$ProductCategoryRefCopyWithImpl(this._self, this._then);

  final ProductCategoryRef _self;
  final $Res Function(ProductCategoryRef) _then;

  /// Create a copy of ProductCategoryRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProductCategoryRef].
extension ProductCategoryRefPatterns on ProductCategoryRef {
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
    TResult Function(_ProductCategoryRef value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductCategoryRef() when $default != null:
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
    TResult Function(_ProductCategoryRef value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductCategoryRef():
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
    TResult? Function(_ProductCategoryRef value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductCategoryRef() when $default != null:
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
    TResult Function(@JsonKey(name: ProductCategoryRef.idKey_) String id,
            @JsonKey(name: ProductCategoryRef.nameKey_) String name)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductCategoryRef() when $default != null:
        return $default(_that.id, _that.name);
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
    TResult Function(@JsonKey(name: ProductCategoryRef.idKey_) String id,
            @JsonKey(name: ProductCategoryRef.nameKey_) String name)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductCategoryRef():
        return $default(_that.id, _that.name);
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
    TResult? Function(@JsonKey(name: ProductCategoryRef.idKey_) String id,
            @JsonKey(name: ProductCategoryRef.nameKey_) String name)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductCategoryRef() when $default != null:
        return $default(_that.id, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _ProductCategoryRef extends ProductCategoryRef {
  const _ProductCategoryRef(
      {@JsonKey(name: ProductCategoryRef.idKey_) required this.id,
      @JsonKey(name: ProductCategoryRef.nameKey_) required this.name})
      : super._();
  factory _ProductCategoryRef.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryRefFromJson(json);

  /// id
  @override
  @JsonKey(name: ProductCategoryRef.idKey_)
  final String id;

  /// name
  @override
  @JsonKey(name: ProductCategoryRef.nameKey_)
  final String name;

  /// Create a copy of ProductCategoryRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductCategoryRefCopyWith<_ProductCategoryRef> get copyWith =>
      __$ProductCategoryRefCopyWithImpl<_ProductCategoryRef>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductCategoryRefToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductCategoryRef &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'ProductCategoryRef(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$ProductCategoryRefCopyWith<$Res>
    implements $ProductCategoryRefCopyWith<$Res> {
  factory _$ProductCategoryRefCopyWith(
          _ProductCategoryRef value, $Res Function(_ProductCategoryRef) _then) =
      __$ProductCategoryRefCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ProductCategoryRef.idKey_) String id,
      @JsonKey(name: ProductCategoryRef.nameKey_) String name});
}

/// @nodoc
class __$ProductCategoryRefCopyWithImpl<$Res>
    implements _$ProductCategoryRefCopyWith<$Res> {
  __$ProductCategoryRefCopyWithImpl(this._self, this._then);

  final _ProductCategoryRef _self;
  final $Res Function(_ProductCategoryRef) _then;

  /// Create a copy of ProductCategoryRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_ProductCategoryRef(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
