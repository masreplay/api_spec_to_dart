// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_price_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePriceListDto {
  /// name
  @JsonKey(name: CreatePriceListDto.nameKey_)
  String get name;

  /// validFrom
  @JsonKey(name: CreatePriceListDto.validFromKey_)
  DateTime? get validFrom;

  /// validTo
  @JsonKey(name: CreatePriceListDto.validToKey_)
  DateTime? get validTo;

  /// salePointIds
  @JsonKey(name: CreatePriceListDto.salePointIdsKey_)
  List<String> get salePointIds;

  /// policies
  @JsonKey(name: CreatePriceListDto.policiesKey_)
  List<CreatePriceListPolicyDto> get policies;

  /// Create a copy of CreatePriceListDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreatePriceListDtoCopyWith<CreatePriceListDto> get copyWith =>
      _$CreatePriceListDtoCopyWithImpl<CreatePriceListDto>(
          this as CreatePriceListDto, _$identity);

  /// Serializes this CreatePriceListDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatePriceListDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validTo, validTo) || other.validTo == validTo) &&
            const DeepCollectionEquality()
                .equals(other.salePointIds, salePointIds) &&
            const DeepCollectionEquality().equals(other.policies, policies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      validFrom,
      validTo,
      const DeepCollectionEquality().hash(salePointIds),
      const DeepCollectionEquality().hash(policies));

  @override
  String toString() {
    return 'CreatePriceListDto(name: $name, validFrom: $validFrom, validTo: $validTo, salePointIds: $salePointIds, policies: $policies)';
  }
}

/// @nodoc
abstract mixin class $CreatePriceListDtoCopyWith<$Res> {
  factory $CreatePriceListDtoCopyWith(
          CreatePriceListDto value, $Res Function(CreatePriceListDto) _then) =
      _$CreatePriceListDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CreatePriceListDto.nameKey_) String name,
      @JsonKey(name: CreatePriceListDto.validFromKey_) DateTime? validFrom,
      @JsonKey(name: CreatePriceListDto.validToKey_) DateTime? validTo,
      @JsonKey(name: CreatePriceListDto.salePointIdsKey_)
      List<String> salePointIds,
      @JsonKey(name: CreatePriceListDto.policiesKey_)
      List<CreatePriceListPolicyDto> policies});
}

/// @nodoc
class _$CreatePriceListDtoCopyWithImpl<$Res>
    implements $CreatePriceListDtoCopyWith<$Res> {
  _$CreatePriceListDtoCopyWithImpl(this._self, this._then);

  final CreatePriceListDto _self;
  final $Res Function(CreatePriceListDto) _then;

  /// Create a copy of CreatePriceListDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? validFrom = freezed,
    Object? validTo = freezed,
    Object? salePointIds = null,
    Object? policies = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _self.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      salePointIds: null == salePointIds
          ? _self.salePointIds
          : salePointIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      policies: null == policies
          ? _self.policies
          : policies // ignore: cast_nullable_to_non_nullable
              as List<CreatePriceListPolicyDto>,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreatePriceListDto].
extension CreatePriceListDtoPatterns on CreatePriceListDto {
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
    TResult Function(_CreatePriceListDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePriceListDto() when $default != null:
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
    TResult Function(_CreatePriceListDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePriceListDto():
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
    TResult? Function(_CreatePriceListDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePriceListDto() when $default != null:
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
            @JsonKey(name: CreatePriceListDto.nameKey_) String name,
            @JsonKey(name: CreatePriceListDto.validFromKey_)
            DateTime? validFrom,
            @JsonKey(name: CreatePriceListDto.validToKey_) DateTime? validTo,
            @JsonKey(name: CreatePriceListDto.salePointIdsKey_)
            List<String> salePointIds,
            @JsonKey(name: CreatePriceListDto.policiesKey_)
            List<CreatePriceListPolicyDto> policies)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePriceListDto() when $default != null:
        return $default(_that.name, _that.validFrom, _that.validTo,
            _that.salePointIds, _that.policies);
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
            @JsonKey(name: CreatePriceListDto.nameKey_) String name,
            @JsonKey(name: CreatePriceListDto.validFromKey_)
            DateTime? validFrom,
            @JsonKey(name: CreatePriceListDto.validToKey_) DateTime? validTo,
            @JsonKey(name: CreatePriceListDto.salePointIdsKey_)
            List<String> salePointIds,
            @JsonKey(name: CreatePriceListDto.policiesKey_)
            List<CreatePriceListPolicyDto> policies)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePriceListDto():
        return $default(_that.name, _that.validFrom, _that.validTo,
            _that.salePointIds, _that.policies);
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
            @JsonKey(name: CreatePriceListDto.nameKey_) String name,
            @JsonKey(name: CreatePriceListDto.validFromKey_)
            DateTime? validFrom,
            @JsonKey(name: CreatePriceListDto.validToKey_) DateTime? validTo,
            @JsonKey(name: CreatePriceListDto.salePointIdsKey_)
            List<String> salePointIds,
            @JsonKey(name: CreatePriceListDto.policiesKey_)
            List<CreatePriceListPolicyDto> policies)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePriceListDto() when $default != null:
        return $default(_that.name, _that.validFrom, _that.validTo,
            _that.salePointIds, _that.policies);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _CreatePriceListDto extends CreatePriceListDto {
  const _CreatePriceListDto(
      {@JsonKey(name: CreatePriceListDto.nameKey_) required this.name,
      @JsonKey(name: CreatePriceListDto.validFromKey_) this.validFrom,
      @JsonKey(name: CreatePriceListDto.validToKey_) this.validTo,
      @JsonKey(name: CreatePriceListDto.salePointIdsKey_)
      required final List<String> salePointIds,
      @JsonKey(name: CreatePriceListDto.policiesKey_)
      required final List<CreatePriceListPolicyDto> policies})
      : _salePointIds = salePointIds,
        _policies = policies,
        super._();
  factory _CreatePriceListDto.fromJson(Map<String, dynamic> json) =>
      _$CreatePriceListDtoFromJson(json);

  /// name
  @override
  @JsonKey(name: CreatePriceListDto.nameKey_)
  final String name;

  /// validFrom
  @override
  @JsonKey(name: CreatePriceListDto.validFromKey_)
  final DateTime? validFrom;

  /// validTo
  @override
  @JsonKey(name: CreatePriceListDto.validToKey_)
  final DateTime? validTo;

  /// salePointIds
  final List<String> _salePointIds;

  /// salePointIds
  @override
  @JsonKey(name: CreatePriceListDto.salePointIdsKey_)
  List<String> get salePointIds {
    if (_salePointIds is EqualUnmodifiableListView) return _salePointIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_salePointIds);
  }

  /// policies
  final List<CreatePriceListPolicyDto> _policies;

  /// policies
  @override
  @JsonKey(name: CreatePriceListDto.policiesKey_)
  List<CreatePriceListPolicyDto> get policies {
    if (_policies is EqualUnmodifiableListView) return _policies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_policies);
  }

  /// Create a copy of CreatePriceListDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreatePriceListDtoCopyWith<_CreatePriceListDto> get copyWith =>
      __$CreatePriceListDtoCopyWithImpl<_CreatePriceListDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreatePriceListDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePriceListDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validTo, validTo) || other.validTo == validTo) &&
            const DeepCollectionEquality()
                .equals(other._salePointIds, _salePointIds) &&
            const DeepCollectionEquality().equals(other._policies, _policies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      validFrom,
      validTo,
      const DeepCollectionEquality().hash(_salePointIds),
      const DeepCollectionEquality().hash(_policies));

  @override
  String toString() {
    return 'CreatePriceListDto(name: $name, validFrom: $validFrom, validTo: $validTo, salePointIds: $salePointIds, policies: $policies)';
  }
}

/// @nodoc
abstract mixin class _$CreatePriceListDtoCopyWith<$Res>
    implements $CreatePriceListDtoCopyWith<$Res> {
  factory _$CreatePriceListDtoCopyWith(
          _CreatePriceListDto value, $Res Function(_CreatePriceListDto) _then) =
      __$CreatePriceListDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CreatePriceListDto.nameKey_) String name,
      @JsonKey(name: CreatePriceListDto.validFromKey_) DateTime? validFrom,
      @JsonKey(name: CreatePriceListDto.validToKey_) DateTime? validTo,
      @JsonKey(name: CreatePriceListDto.salePointIdsKey_)
      List<String> salePointIds,
      @JsonKey(name: CreatePriceListDto.policiesKey_)
      List<CreatePriceListPolicyDto> policies});
}

/// @nodoc
class __$CreatePriceListDtoCopyWithImpl<$Res>
    implements _$CreatePriceListDtoCopyWith<$Res> {
  __$CreatePriceListDtoCopyWithImpl(this._self, this._then);

  final _CreatePriceListDto _self;
  final $Res Function(_CreatePriceListDto) _then;

  /// Create a copy of CreatePriceListDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? validFrom = freezed,
    Object? validTo = freezed,
    Object? salePointIds = null,
    Object? policies = null,
  }) {
    return _then(_CreatePriceListDto(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _self.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      salePointIds: null == salePointIds
          ? _self._salePointIds
          : salePointIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      policies: null == policies
          ? _self._policies
          : policies // ignore: cast_nullable_to_non_nullable
              as List<CreatePriceListPolicyDto>,
    ));
  }
}
