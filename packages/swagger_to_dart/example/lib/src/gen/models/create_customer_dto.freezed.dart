// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_customer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateCustomerDto {
  /// name
  @JsonKey(name: CreateCustomerDto.nameKey_)
  String get name;

  /// cuit
  @JsonKey(name: CreateCustomerDto.cuitKey_)
  String? get cuit;

  /// address
  @JsonKey(name: CreateCustomerDto.addressKey_)
  String? get address;

  /// requireFullPaymentOnClose
  @JsonKey(name: CreateCustomerDto.requireFullPaymentOnCloseKey_)
  bool get requireFullPaymentOnClose;

  /// Create a copy of CreateCustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateCustomerDtoCopyWith<CreateCustomerDto> get copyWith =>
      _$CreateCustomerDtoCopyWithImpl<CreateCustomerDto>(
          this as CreateCustomerDto, _$identity);

  /// Serializes this CreateCustomerDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateCustomerDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cuit, cuit) || other.cuit == cuit) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.requireFullPaymentOnClose,
                    requireFullPaymentOnClose) ||
                other.requireFullPaymentOnClose == requireFullPaymentOnClose));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, cuit, address, requireFullPaymentOnClose);

  @override
  String toString() {
    return 'CreateCustomerDto(name: $name, cuit: $cuit, address: $address, requireFullPaymentOnClose: $requireFullPaymentOnClose)';
  }
}

/// @nodoc
abstract mixin class $CreateCustomerDtoCopyWith<$Res> {
  factory $CreateCustomerDtoCopyWith(
          CreateCustomerDto value, $Res Function(CreateCustomerDto) _then) =
      _$CreateCustomerDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CreateCustomerDto.nameKey_) String name,
      @JsonKey(name: CreateCustomerDto.cuitKey_) String? cuit,
      @JsonKey(name: CreateCustomerDto.addressKey_) String? address,
      @JsonKey(name: CreateCustomerDto.requireFullPaymentOnCloseKey_)
      bool requireFullPaymentOnClose});
}

/// @nodoc
class _$CreateCustomerDtoCopyWithImpl<$Res>
    implements $CreateCustomerDtoCopyWith<$Res> {
  _$CreateCustomerDtoCopyWithImpl(this._self, this._then);

  final CreateCustomerDto _self;
  final $Res Function(CreateCustomerDto) _then;

  /// Create a copy of CreateCustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? cuit = freezed,
    Object? address = freezed,
    Object? requireFullPaymentOnClose = null,
  }) {
    return _then(_self.copyWith(
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
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateCustomerDto].
extension CreateCustomerDtoPatterns on CreateCustomerDto {
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
    TResult Function(_CreateCustomerDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateCustomerDto() when $default != null:
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
    TResult Function(_CreateCustomerDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCustomerDto():
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
    TResult? Function(_CreateCustomerDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCustomerDto() when $default != null:
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
            @JsonKey(name: CreateCustomerDto.nameKey_) String name,
            @JsonKey(name: CreateCustomerDto.cuitKey_) String? cuit,
            @JsonKey(name: CreateCustomerDto.addressKey_) String? address,
            @JsonKey(name: CreateCustomerDto.requireFullPaymentOnCloseKey_)
            bool requireFullPaymentOnClose)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateCustomerDto() when $default != null:
        return $default(_that.name, _that.cuit, _that.address,
            _that.requireFullPaymentOnClose);
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
            @JsonKey(name: CreateCustomerDto.nameKey_) String name,
            @JsonKey(name: CreateCustomerDto.cuitKey_) String? cuit,
            @JsonKey(name: CreateCustomerDto.addressKey_) String? address,
            @JsonKey(name: CreateCustomerDto.requireFullPaymentOnCloseKey_)
            bool requireFullPaymentOnClose)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCustomerDto():
        return $default(_that.name, _that.cuit, _that.address,
            _that.requireFullPaymentOnClose);
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
            @JsonKey(name: CreateCustomerDto.nameKey_) String name,
            @JsonKey(name: CreateCustomerDto.cuitKey_) String? cuit,
            @JsonKey(name: CreateCustomerDto.addressKey_) String? address,
            @JsonKey(name: CreateCustomerDto.requireFullPaymentOnCloseKey_)
            bool requireFullPaymentOnClose)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCustomerDto() when $default != null:
        return $default(_that.name, _that.cuit, _that.address,
            _that.requireFullPaymentOnClose);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _CreateCustomerDto extends CreateCustomerDto {
  const _CreateCustomerDto(
      {@JsonKey(name: CreateCustomerDto.nameKey_) required this.name,
      @JsonKey(name: CreateCustomerDto.cuitKey_) this.cuit,
      @JsonKey(name: CreateCustomerDto.addressKey_) this.address,
      @JsonKey(name: CreateCustomerDto.requireFullPaymentOnCloseKey_)
      required this.requireFullPaymentOnClose})
      : super._();
  factory _CreateCustomerDto.fromJson(Map<String, dynamic> json) =>
      _$CreateCustomerDtoFromJson(json);

  /// name
  @override
  @JsonKey(name: CreateCustomerDto.nameKey_)
  final String name;

  /// cuit
  @override
  @JsonKey(name: CreateCustomerDto.cuitKey_)
  final String? cuit;

  /// address
  @override
  @JsonKey(name: CreateCustomerDto.addressKey_)
  final String? address;

  /// requireFullPaymentOnClose
  @override
  @JsonKey(name: CreateCustomerDto.requireFullPaymentOnCloseKey_)
  final bool requireFullPaymentOnClose;

  /// Create a copy of CreateCustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateCustomerDtoCopyWith<_CreateCustomerDto> get copyWith =>
      __$CreateCustomerDtoCopyWithImpl<_CreateCustomerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateCustomerDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateCustomerDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cuit, cuit) || other.cuit == cuit) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.requireFullPaymentOnClose,
                    requireFullPaymentOnClose) ||
                other.requireFullPaymentOnClose == requireFullPaymentOnClose));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, cuit, address, requireFullPaymentOnClose);

  @override
  String toString() {
    return 'CreateCustomerDto(name: $name, cuit: $cuit, address: $address, requireFullPaymentOnClose: $requireFullPaymentOnClose)';
  }
}

/// @nodoc
abstract mixin class _$CreateCustomerDtoCopyWith<$Res>
    implements $CreateCustomerDtoCopyWith<$Res> {
  factory _$CreateCustomerDtoCopyWith(
          _CreateCustomerDto value, $Res Function(_CreateCustomerDto) _then) =
      __$CreateCustomerDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CreateCustomerDto.nameKey_) String name,
      @JsonKey(name: CreateCustomerDto.cuitKey_) String? cuit,
      @JsonKey(name: CreateCustomerDto.addressKey_) String? address,
      @JsonKey(name: CreateCustomerDto.requireFullPaymentOnCloseKey_)
      bool requireFullPaymentOnClose});
}

/// @nodoc
class __$CreateCustomerDtoCopyWithImpl<$Res>
    implements _$CreateCustomerDtoCopyWith<$Res> {
  __$CreateCustomerDtoCopyWithImpl(this._self, this._then);

  final _CreateCustomerDto _self;
  final $Res Function(_CreateCustomerDto) _then;

  /// Create a copy of CreateCustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? cuit = freezed,
    Object? address = freezed,
    Object? requireFullPaymentOnClose = null,
  }) {
    return _then(_CreateCustomerDto(
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
    ));
  }
}
