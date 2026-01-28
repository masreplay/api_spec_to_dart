// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_customer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateCustomerDto {
  /// name
  @JsonKey(name: UpdateCustomerDto.nameKey_)
  String? get name;

  /// cuit
  @JsonKey(name: UpdateCustomerDto.cuitKey_)
  String? get cuit;

  /// address
  @JsonKey(name: UpdateCustomerDto.addressKey_)
  String? get address;

  /// requireFullPaymentOnClose
  @JsonKey(name: UpdateCustomerDto.requireFullPaymentOnCloseKey_)
  bool? get requireFullPaymentOnClose;

  /// Create a copy of UpdateCustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateCustomerDtoCopyWith<UpdateCustomerDto> get copyWith =>
      _$UpdateCustomerDtoCopyWithImpl<UpdateCustomerDto>(
          this as UpdateCustomerDto, _$identity);

  /// Serializes this UpdateCustomerDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateCustomerDto &&
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
    return 'UpdateCustomerDto(name: $name, cuit: $cuit, address: $address, requireFullPaymentOnClose: $requireFullPaymentOnClose)';
  }
}

/// @nodoc
abstract mixin class $UpdateCustomerDtoCopyWith<$Res> {
  factory $UpdateCustomerDtoCopyWith(
          UpdateCustomerDto value, $Res Function(UpdateCustomerDto) _then) =
      _$UpdateCustomerDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: UpdateCustomerDto.nameKey_) String? name,
      @JsonKey(name: UpdateCustomerDto.cuitKey_) String? cuit,
      @JsonKey(name: UpdateCustomerDto.addressKey_) String? address,
      @JsonKey(name: UpdateCustomerDto.requireFullPaymentOnCloseKey_)
      bool? requireFullPaymentOnClose});
}

/// @nodoc
class _$UpdateCustomerDtoCopyWithImpl<$Res>
    implements $UpdateCustomerDtoCopyWith<$Res> {
  _$UpdateCustomerDtoCopyWithImpl(this._self, this._then);

  final UpdateCustomerDto _self;
  final $Res Function(UpdateCustomerDto) _then;

  /// Create a copy of UpdateCustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? cuit = freezed,
    Object? address = freezed,
    Object? requireFullPaymentOnClose = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cuit: freezed == cuit
          ? _self.cuit
          : cuit // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      requireFullPaymentOnClose: freezed == requireFullPaymentOnClose
          ? _self.requireFullPaymentOnClose
          : requireFullPaymentOnClose // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateCustomerDto].
extension UpdateCustomerDtoPatterns on UpdateCustomerDto {
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
    TResult Function(_UpdateCustomerDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateCustomerDto() when $default != null:
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
    TResult Function(_UpdateCustomerDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateCustomerDto():
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
    TResult? Function(_UpdateCustomerDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateCustomerDto() when $default != null:
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
            @JsonKey(name: UpdateCustomerDto.nameKey_) String? name,
            @JsonKey(name: UpdateCustomerDto.cuitKey_) String? cuit,
            @JsonKey(name: UpdateCustomerDto.addressKey_) String? address,
            @JsonKey(name: UpdateCustomerDto.requireFullPaymentOnCloseKey_)
            bool? requireFullPaymentOnClose)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateCustomerDto() when $default != null:
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
            @JsonKey(name: UpdateCustomerDto.nameKey_) String? name,
            @JsonKey(name: UpdateCustomerDto.cuitKey_) String? cuit,
            @JsonKey(name: UpdateCustomerDto.addressKey_) String? address,
            @JsonKey(name: UpdateCustomerDto.requireFullPaymentOnCloseKey_)
            bool? requireFullPaymentOnClose)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateCustomerDto():
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
            @JsonKey(name: UpdateCustomerDto.nameKey_) String? name,
            @JsonKey(name: UpdateCustomerDto.cuitKey_) String? cuit,
            @JsonKey(name: UpdateCustomerDto.addressKey_) String? address,
            @JsonKey(name: UpdateCustomerDto.requireFullPaymentOnCloseKey_)
            bool? requireFullPaymentOnClose)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateCustomerDto() when $default != null:
        return $default(_that.name, _that.cuit, _that.address,
            _that.requireFullPaymentOnClose);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _UpdateCustomerDto extends UpdateCustomerDto {
  const _UpdateCustomerDto(
      {@JsonKey(name: UpdateCustomerDto.nameKey_) this.name,
      @JsonKey(name: UpdateCustomerDto.cuitKey_) this.cuit,
      @JsonKey(name: UpdateCustomerDto.addressKey_) this.address,
      @JsonKey(name: UpdateCustomerDto.requireFullPaymentOnCloseKey_)
      this.requireFullPaymentOnClose})
      : super._();
  factory _UpdateCustomerDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateCustomerDtoFromJson(json);

  /// name
  @override
  @JsonKey(name: UpdateCustomerDto.nameKey_)
  final String? name;

  /// cuit
  @override
  @JsonKey(name: UpdateCustomerDto.cuitKey_)
  final String? cuit;

  /// address
  @override
  @JsonKey(name: UpdateCustomerDto.addressKey_)
  final String? address;

  /// requireFullPaymentOnClose
  @override
  @JsonKey(name: UpdateCustomerDto.requireFullPaymentOnCloseKey_)
  final bool? requireFullPaymentOnClose;

  /// Create a copy of UpdateCustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateCustomerDtoCopyWith<_UpdateCustomerDto> get copyWith =>
      __$UpdateCustomerDtoCopyWithImpl<_UpdateCustomerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateCustomerDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateCustomerDto &&
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
    return 'UpdateCustomerDto(name: $name, cuit: $cuit, address: $address, requireFullPaymentOnClose: $requireFullPaymentOnClose)';
  }
}

/// @nodoc
abstract mixin class _$UpdateCustomerDtoCopyWith<$Res>
    implements $UpdateCustomerDtoCopyWith<$Res> {
  factory _$UpdateCustomerDtoCopyWith(
          _UpdateCustomerDto value, $Res Function(_UpdateCustomerDto) _then) =
      __$UpdateCustomerDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UpdateCustomerDto.nameKey_) String? name,
      @JsonKey(name: UpdateCustomerDto.cuitKey_) String? cuit,
      @JsonKey(name: UpdateCustomerDto.addressKey_) String? address,
      @JsonKey(name: UpdateCustomerDto.requireFullPaymentOnCloseKey_)
      bool? requireFullPaymentOnClose});
}

/// @nodoc
class __$UpdateCustomerDtoCopyWithImpl<$Res>
    implements _$UpdateCustomerDtoCopyWith<$Res> {
  __$UpdateCustomerDtoCopyWithImpl(this._self, this._then);

  final _UpdateCustomerDto _self;
  final $Res Function(_UpdateCustomerDto) _then;

  /// Create a copy of UpdateCustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? cuit = freezed,
    Object? address = freezed,
    Object? requireFullPaymentOnClose = freezed,
  }) {
    return _then(_UpdateCustomerDto(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cuit: freezed == cuit
          ? _self.cuit
          : cuit // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      requireFullPaymentOnClose: freezed == requireFullPaymentOnClose
          ? _self.requireFullPaymentOnClose
          : requireFullPaymentOnClose // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}
