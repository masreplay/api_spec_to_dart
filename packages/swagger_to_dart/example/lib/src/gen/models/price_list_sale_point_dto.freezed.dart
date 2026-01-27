// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_list_sale_point_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceListSalePointDto {
  /// salePointId
  @JsonKey(name: PriceListSalePointDto.salePointIdKey_)
  String get salePointId;

  /// salePointName
  @JsonKey(name: PriceListSalePointDto.salePointNameKey_)
  String get salePointName;

  /// Create a copy of PriceListSalePointDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PriceListSalePointDtoCopyWith<PriceListSalePointDto> get copyWith =>
      _$PriceListSalePointDtoCopyWithImpl<PriceListSalePointDto>(
          this as PriceListSalePointDto, _$identity);

  /// Serializes this PriceListSalePointDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceListSalePointDto &&
            (identical(other.salePointId, salePointId) ||
                other.salePointId == salePointId) &&
            (identical(other.salePointName, salePointName) ||
                other.salePointName == salePointName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, salePointId, salePointName);

  @override
  String toString() {
    return 'PriceListSalePointDto(salePointId: $salePointId, salePointName: $salePointName)';
  }
}

/// @nodoc
abstract mixin class $PriceListSalePointDtoCopyWith<$Res> {
  factory $PriceListSalePointDtoCopyWith(PriceListSalePointDto value,
          $Res Function(PriceListSalePointDto) _then) =
      _$PriceListSalePointDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: PriceListSalePointDto.salePointIdKey_) String salePointId,
      @JsonKey(name: PriceListSalePointDto.salePointNameKey_)
      String salePointName});
}

/// @nodoc
class _$PriceListSalePointDtoCopyWithImpl<$Res>
    implements $PriceListSalePointDtoCopyWith<$Res> {
  _$PriceListSalePointDtoCopyWithImpl(this._self, this._then);

  final PriceListSalePointDto _self;
  final $Res Function(PriceListSalePointDto) _then;

  /// Create a copy of PriceListSalePointDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salePointId = null,
    Object? salePointName = null,
  }) {
    return _then(_self.copyWith(
      salePointId: null == salePointId
          ? _self.salePointId
          : salePointId // ignore: cast_nullable_to_non_nullable
              as String,
      salePointName: null == salePointName
          ? _self.salePointName
          : salePointName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [PriceListSalePointDto].
extension PriceListSalePointDtoPatterns on PriceListSalePointDto {
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
    TResult Function(_PriceListSalePointDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PriceListSalePointDto() when $default != null:
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
    TResult Function(_PriceListSalePointDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListSalePointDto():
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
    TResult? Function(_PriceListSalePointDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListSalePointDto() when $default != null:
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
            @JsonKey(name: PriceListSalePointDto.salePointIdKey_)
            String salePointId,
            @JsonKey(name: PriceListSalePointDto.salePointNameKey_)
            String salePointName)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PriceListSalePointDto() when $default != null:
        return $default(_that.salePointId, _that.salePointName);
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
            @JsonKey(name: PriceListSalePointDto.salePointIdKey_)
            String salePointId,
            @JsonKey(name: PriceListSalePointDto.salePointNameKey_)
            String salePointName)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListSalePointDto():
        return $default(_that.salePointId, _that.salePointName);
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
            @JsonKey(name: PriceListSalePointDto.salePointIdKey_)
            String salePointId,
            @JsonKey(name: PriceListSalePointDto.salePointNameKey_)
            String salePointName)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListSalePointDto() when $default != null:
        return $default(_that.salePointId, _that.salePointName);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PriceListSalePointDto extends PriceListSalePointDto {
  const _PriceListSalePointDto(
      {@JsonKey(name: PriceListSalePointDto.salePointIdKey_)
      required this.salePointId,
      @JsonKey(name: PriceListSalePointDto.salePointNameKey_)
      required this.salePointName})
      : super._();
  factory _PriceListSalePointDto.fromJson(Map<String, dynamic> json) =>
      _$PriceListSalePointDtoFromJson(json);

  /// salePointId
  @override
  @JsonKey(name: PriceListSalePointDto.salePointIdKey_)
  final String salePointId;

  /// salePointName
  @override
  @JsonKey(name: PriceListSalePointDto.salePointNameKey_)
  final String salePointName;

  /// Create a copy of PriceListSalePointDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PriceListSalePointDtoCopyWith<_PriceListSalePointDto> get copyWith =>
      __$PriceListSalePointDtoCopyWithImpl<_PriceListSalePointDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PriceListSalePointDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PriceListSalePointDto &&
            (identical(other.salePointId, salePointId) ||
                other.salePointId == salePointId) &&
            (identical(other.salePointName, salePointName) ||
                other.salePointName == salePointName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, salePointId, salePointName);

  @override
  String toString() {
    return 'PriceListSalePointDto(salePointId: $salePointId, salePointName: $salePointName)';
  }
}

/// @nodoc
abstract mixin class _$PriceListSalePointDtoCopyWith<$Res>
    implements $PriceListSalePointDtoCopyWith<$Res> {
  factory _$PriceListSalePointDtoCopyWith(_PriceListSalePointDto value,
          $Res Function(_PriceListSalePointDto) _then) =
      __$PriceListSalePointDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: PriceListSalePointDto.salePointIdKey_) String salePointId,
      @JsonKey(name: PriceListSalePointDto.salePointNameKey_)
      String salePointName});
}

/// @nodoc
class __$PriceListSalePointDtoCopyWithImpl<$Res>
    implements _$PriceListSalePointDtoCopyWith<$Res> {
  __$PriceListSalePointDtoCopyWithImpl(this._self, this._then);

  final _PriceListSalePointDto _self;
  final $Res Function(_PriceListSalePointDto) _then;

  /// Create a copy of PriceListSalePointDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? salePointId = null,
    Object? salePointName = null,
  }) {
    return _then(_PriceListSalePointDto(
      salePointId: null == salePointId
          ? _self.salePointId
          : salePointId // ignore: cast_nullable_to_non_nullable
              as String,
      salePointName: null == salePointName
          ? _self.salePointName
          : salePointName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
