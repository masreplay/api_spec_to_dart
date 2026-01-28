// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerDto {
  /// id
  @JsonKey(name: CustomerDto.idKey_)
  String get id;

  /// name
  @JsonKey(name: CustomerDto.nameKey_)
  String get name;

  /// cuit
  @JsonKey(name: CustomerDto.cuitKey_)
  String? get cuit;

  /// address
  @JsonKey(name: CustomerDto.addressKey_)
  String? get address;

  /// requireFullPaymentOnClose
  @JsonKey(name: CustomerDto.requireFullPaymentOnCloseKey_)
  bool get requireFullPaymentOnClose;

  /// balance
  @JsonKey(name: CustomerDto.balanceKey_)
  double get balance;

  /// createdAt
  @JsonKey(name: CustomerDto.createdAtKey_)
  DateTime get createdAt;

  /// modifiedAt
  @JsonKey(name: CustomerDto.modifiedAtKey_)
  DateTime get modifiedAt;

  /// Create a copy of CustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomerDtoCopyWith<CustomerDto> get copyWith =>
      _$CustomerDtoCopyWithImpl<CustomerDto>(this as CustomerDto, _$identity);

  /// Serializes this CustomerDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomerDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cuit, cuit) || other.cuit == cuit) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.requireFullPaymentOnClose,
                    requireFullPaymentOnClose) ||
                other.requireFullPaymentOnClose == requireFullPaymentOnClose) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, cuit, address,
      requireFullPaymentOnClose, balance, createdAt, modifiedAt);

  @override
  String toString() {
    return 'CustomerDto(id: $id, name: $name, cuit: $cuit, address: $address, requireFullPaymentOnClose: $requireFullPaymentOnClose, balance: $balance, createdAt: $createdAt, modifiedAt: $modifiedAt)';
  }
}

/// @nodoc
abstract mixin class $CustomerDtoCopyWith<$Res> {
  factory $CustomerDtoCopyWith(
          CustomerDto value, $Res Function(CustomerDto) _then) =
      _$CustomerDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CustomerDto.idKey_) String id,
      @JsonKey(name: CustomerDto.nameKey_) String name,
      @JsonKey(name: CustomerDto.cuitKey_) String? cuit,
      @JsonKey(name: CustomerDto.addressKey_) String? address,
      @JsonKey(name: CustomerDto.requireFullPaymentOnCloseKey_)
      bool requireFullPaymentOnClose,
      @JsonKey(name: CustomerDto.balanceKey_) double balance,
      @JsonKey(name: CustomerDto.createdAtKey_) DateTime createdAt,
      @JsonKey(name: CustomerDto.modifiedAtKey_) DateTime modifiedAt});
}

/// @nodoc
class _$CustomerDtoCopyWithImpl<$Res> implements $CustomerDtoCopyWith<$Res> {
  _$CustomerDtoCopyWithImpl(this._self, this._then);

  final CustomerDto _self;
  final $Res Function(CustomerDto) _then;

  /// Create a copy of CustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cuit = freezed,
    Object? address = freezed,
    Object? requireFullPaymentOnClose = null,
    Object? balance = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
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
      cuit: freezed == cuit
          ? _self.cuit
          : cuit // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      requireFullPaymentOnClose: null == requireFullPaymentOnClose
          ? _self.requireFullPaymentOnClose
          : requireFullPaymentOnClose // ignore: cast_nullable_to_non_nullable
              as bool,
      balance: null == balance
          ? _self.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modifiedAt: null == modifiedAt
          ? _self.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [CustomerDto].
extension CustomerDtoPatterns on CustomerDto {
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
    TResult Function(_CustomerDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomerDto() when $default != null:
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
    TResult Function(_CustomerDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerDto():
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
    TResult? Function(_CustomerDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerDto() when $default != null:
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
            @JsonKey(name: CustomerDto.idKey_) String id,
            @JsonKey(name: CustomerDto.nameKey_) String name,
            @JsonKey(name: CustomerDto.cuitKey_) String? cuit,
            @JsonKey(name: CustomerDto.addressKey_) String? address,
            @JsonKey(name: CustomerDto.requireFullPaymentOnCloseKey_)
            bool requireFullPaymentOnClose,
            @JsonKey(name: CustomerDto.balanceKey_) double balance,
            @JsonKey(name: CustomerDto.createdAtKey_) DateTime createdAt,
            @JsonKey(name: CustomerDto.modifiedAtKey_) DateTime modifiedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomerDto() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.cuit,
            _that.address,
            _that.requireFullPaymentOnClose,
            _that.balance,
            _that.createdAt,
            _that.modifiedAt);
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
            @JsonKey(name: CustomerDto.idKey_) String id,
            @JsonKey(name: CustomerDto.nameKey_) String name,
            @JsonKey(name: CustomerDto.cuitKey_) String? cuit,
            @JsonKey(name: CustomerDto.addressKey_) String? address,
            @JsonKey(name: CustomerDto.requireFullPaymentOnCloseKey_)
            bool requireFullPaymentOnClose,
            @JsonKey(name: CustomerDto.balanceKey_) double balance,
            @JsonKey(name: CustomerDto.createdAtKey_) DateTime createdAt,
            @JsonKey(name: CustomerDto.modifiedAtKey_) DateTime modifiedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerDto():
        return $default(
            _that.id,
            _that.name,
            _that.cuit,
            _that.address,
            _that.requireFullPaymentOnClose,
            _that.balance,
            _that.createdAt,
            _that.modifiedAt);
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
            @JsonKey(name: CustomerDto.idKey_) String id,
            @JsonKey(name: CustomerDto.nameKey_) String name,
            @JsonKey(name: CustomerDto.cuitKey_) String? cuit,
            @JsonKey(name: CustomerDto.addressKey_) String? address,
            @JsonKey(name: CustomerDto.requireFullPaymentOnCloseKey_)
            bool requireFullPaymentOnClose,
            @JsonKey(name: CustomerDto.balanceKey_) double balance,
            @JsonKey(name: CustomerDto.createdAtKey_) DateTime createdAt,
            @JsonKey(name: CustomerDto.modifiedAtKey_) DateTime modifiedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerDto() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.cuit,
            _that.address,
            _that.requireFullPaymentOnClose,
            _that.balance,
            _that.createdAt,
            _that.modifiedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _CustomerDto extends CustomerDto {
  const _CustomerDto(
      {@JsonKey(name: CustomerDto.idKey_) required this.id,
      @JsonKey(name: CustomerDto.nameKey_) required this.name,
      @JsonKey(name: CustomerDto.cuitKey_) this.cuit,
      @JsonKey(name: CustomerDto.addressKey_) this.address,
      @JsonKey(name: CustomerDto.requireFullPaymentOnCloseKey_)
      required this.requireFullPaymentOnClose,
      @JsonKey(name: CustomerDto.balanceKey_) required this.balance,
      @JsonKey(name: CustomerDto.createdAtKey_) required this.createdAt,
      @JsonKey(name: CustomerDto.modifiedAtKey_) required this.modifiedAt})
      : super._();
  factory _CustomerDto.fromJson(Map<String, dynamic> json) =>
      _$CustomerDtoFromJson(json);

  /// id
  @override
  @JsonKey(name: CustomerDto.idKey_)
  final String id;

  /// name
  @override
  @JsonKey(name: CustomerDto.nameKey_)
  final String name;

  /// cuit
  @override
  @JsonKey(name: CustomerDto.cuitKey_)
  final String? cuit;

  /// address
  @override
  @JsonKey(name: CustomerDto.addressKey_)
  final String? address;

  /// requireFullPaymentOnClose
  @override
  @JsonKey(name: CustomerDto.requireFullPaymentOnCloseKey_)
  final bool requireFullPaymentOnClose;

  /// balance
  @override
  @JsonKey(name: CustomerDto.balanceKey_)
  final double balance;

  /// createdAt
  @override
  @JsonKey(name: CustomerDto.createdAtKey_)
  final DateTime createdAt;

  /// modifiedAt
  @override
  @JsonKey(name: CustomerDto.modifiedAtKey_)
  final DateTime modifiedAt;

  /// Create a copy of CustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomerDtoCopyWith<_CustomerDto> get copyWith =>
      __$CustomerDtoCopyWithImpl<_CustomerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomerDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cuit, cuit) || other.cuit == cuit) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.requireFullPaymentOnClose,
                    requireFullPaymentOnClose) ||
                other.requireFullPaymentOnClose == requireFullPaymentOnClose) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, cuit, address,
      requireFullPaymentOnClose, balance, createdAt, modifiedAt);

  @override
  String toString() {
    return 'CustomerDto(id: $id, name: $name, cuit: $cuit, address: $address, requireFullPaymentOnClose: $requireFullPaymentOnClose, balance: $balance, createdAt: $createdAt, modifiedAt: $modifiedAt)';
  }
}

/// @nodoc
abstract mixin class _$CustomerDtoCopyWith<$Res>
    implements $CustomerDtoCopyWith<$Res> {
  factory _$CustomerDtoCopyWith(
          _CustomerDto value, $Res Function(_CustomerDto) _then) =
      __$CustomerDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CustomerDto.idKey_) String id,
      @JsonKey(name: CustomerDto.nameKey_) String name,
      @JsonKey(name: CustomerDto.cuitKey_) String? cuit,
      @JsonKey(name: CustomerDto.addressKey_) String? address,
      @JsonKey(name: CustomerDto.requireFullPaymentOnCloseKey_)
      bool requireFullPaymentOnClose,
      @JsonKey(name: CustomerDto.balanceKey_) double balance,
      @JsonKey(name: CustomerDto.createdAtKey_) DateTime createdAt,
      @JsonKey(name: CustomerDto.modifiedAtKey_) DateTime modifiedAt});
}

/// @nodoc
class __$CustomerDtoCopyWithImpl<$Res> implements _$CustomerDtoCopyWith<$Res> {
  __$CustomerDtoCopyWithImpl(this._self, this._then);

  final _CustomerDto _self;
  final $Res Function(_CustomerDto) _then;

  /// Create a copy of CustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cuit = freezed,
    Object? address = freezed,
    Object? requireFullPaymentOnClose = null,
    Object? balance = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
  }) {
    return _then(_CustomerDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cuit: freezed == cuit
          ? _self.cuit
          : cuit // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      requireFullPaymentOnClose: null == requireFullPaymentOnClose
          ? _self.requireFullPaymentOnClose
          : requireFullPaymentOnClose // ignore: cast_nullable_to_non_nullable
              as bool,
      balance: null == balance
          ? _self.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modifiedAt: null == modifiedAt
          ? _self.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}
