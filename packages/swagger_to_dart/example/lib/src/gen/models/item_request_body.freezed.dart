// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemRequestBody {
  /// name
  @JsonKey(name: ItemRequestBody.nameKey)
  String get name;

  /// description
  @JsonKey(name: ItemRequestBody.descriptionKey)
  String? get description;

  /// price
  @JsonKey(name: ItemRequestBody.priceKey)
  double get price;

  /// tax
  @JsonKey(name: ItemRequestBody.taxKey)
  double? get tax;

  /// Create a copy of ItemRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ItemRequestBodyCopyWith<ItemRequestBody> get copyWith =>
      _$ItemRequestBodyCopyWithImpl<ItemRequestBody>(
          this as ItemRequestBody, _$identity);

  /// Serializes this ItemRequestBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ItemRequestBody &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.tax, tax) || other.tax == tax));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, price, tax);

  @override
  String toString() {
    return 'ItemRequestBody(name: $name, description: $description, price: $price, tax: $tax)';
  }
}

/// @nodoc
abstract mixin class $ItemRequestBodyCopyWith<$Res> {
  factory $ItemRequestBodyCopyWith(
          ItemRequestBody value, $Res Function(ItemRequestBody) _then) =
      _$ItemRequestBodyCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ItemRequestBody.nameKey) String name,
      @JsonKey(name: ItemRequestBody.descriptionKey) String? description,
      @JsonKey(name: ItemRequestBody.priceKey) double price,
      @JsonKey(name: ItemRequestBody.taxKey) double? tax});
}

/// @nodoc
class _$ItemRequestBodyCopyWithImpl<$Res>
    implements $ItemRequestBodyCopyWith<$Res> {
  _$ItemRequestBodyCopyWithImpl(this._self, this._then);

  final ItemRequestBody _self;
  final $Res Function(ItemRequestBody) _then;

  /// Create a copy of ItemRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? price = null,
    Object? tax = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      tax: freezed == tax
          ? _self.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ItemRequestBody].
extension ItemRequestBodyPatterns on ItemRequestBody {
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
    TResult Function(_ItemRequestBody value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ItemRequestBody() when $default != null:
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
    TResult Function(_ItemRequestBody value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemRequestBody():
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
    TResult? Function(_ItemRequestBody value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemRequestBody() when $default != null:
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
            @JsonKey(name: ItemRequestBody.nameKey) String name,
            @JsonKey(name: ItemRequestBody.descriptionKey) String? description,
            @JsonKey(name: ItemRequestBody.priceKey) double price,
            @JsonKey(name: ItemRequestBody.taxKey) double? tax)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ItemRequestBody() when $default != null:
        return $default(_that.name, _that.description, _that.price, _that.tax);
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
            @JsonKey(name: ItemRequestBody.nameKey) String name,
            @JsonKey(name: ItemRequestBody.descriptionKey) String? description,
            @JsonKey(name: ItemRequestBody.priceKey) double price,
            @JsonKey(name: ItemRequestBody.taxKey) double? tax)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemRequestBody():
        return $default(_that.name, _that.description, _that.price, _that.tax);
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
            @JsonKey(name: ItemRequestBody.nameKey) String name,
            @JsonKey(name: ItemRequestBody.descriptionKey) String? description,
            @JsonKey(name: ItemRequestBody.priceKey) double price,
            @JsonKey(name: ItemRequestBody.taxKey) double? tax)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemRequestBody() when $default != null:
        return $default(_that.name, _that.description, _that.price, _that.tax);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _ItemRequestBody extends ItemRequestBody {
  const _ItemRequestBody(
      {@JsonKey(name: ItemRequestBody.nameKey) required this.name,
      @JsonKey(name: ItemRequestBody.descriptionKey) required this.description,
      @JsonKey(name: ItemRequestBody.priceKey) required this.price,
      @JsonKey(name: ItemRequestBody.taxKey) required this.tax})
      : super._();
  factory _ItemRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ItemRequestBodyFromJson(json);

  /// name
  @override
  @JsonKey(name: ItemRequestBody.nameKey)
  final String name;

  /// description
  @override
  @JsonKey(name: ItemRequestBody.descriptionKey)
  final String? description;

  /// price
  @override
  @JsonKey(name: ItemRequestBody.priceKey)
  final double price;

  /// tax
  @override
  @JsonKey(name: ItemRequestBody.taxKey)
  final double? tax;

  /// Create a copy of ItemRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ItemRequestBodyCopyWith<_ItemRequestBody> get copyWith =>
      __$ItemRequestBodyCopyWithImpl<_ItemRequestBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ItemRequestBodyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemRequestBody &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.tax, tax) || other.tax == tax));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, price, tax);

  @override
  String toString() {
    return 'ItemRequestBody(name: $name, description: $description, price: $price, tax: $tax)';
  }
}

/// @nodoc
abstract mixin class _$ItemRequestBodyCopyWith<$Res>
    implements $ItemRequestBodyCopyWith<$Res> {
  factory _$ItemRequestBodyCopyWith(
          _ItemRequestBody value, $Res Function(_ItemRequestBody) _then) =
      __$ItemRequestBodyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ItemRequestBody.nameKey) String name,
      @JsonKey(name: ItemRequestBody.descriptionKey) String? description,
      @JsonKey(name: ItemRequestBody.priceKey) double price,
      @JsonKey(name: ItemRequestBody.taxKey) double? tax});
}

/// @nodoc
class __$ItemRequestBodyCopyWithImpl<$Res>
    implements _$ItemRequestBodyCopyWith<$Res> {
  __$ItemRequestBodyCopyWithImpl(this._self, this._then);

  final _ItemRequestBody _self;
  final $Res Function(_ItemRequestBody) _then;

  /// Create a copy of ItemRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? price = null,
    Object? tax = freezed,
  }) {
    return _then(_ItemRequestBody(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      tax: freezed == tax
          ? _self.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}
