// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_price_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdatePriceListDto {
  /// name
  @JsonKey(name: UpdatePriceListDto.nameKey_)
  String? get name;

  /// enabled
  @JsonKey(name: UpdatePriceListDto.enabledKey_)
  bool? get enabled;

  /// validFrom
  @JsonKey(name: UpdatePriceListDto.validFromKey_)
  DateTime? get validFrom;

  /// validTo
  @JsonKey(name: UpdatePriceListDto.validToKey_)
  DateTime? get validTo;

  /// salePointIds
  @JsonKey(name: UpdatePriceListDto.salePointIdsKey_)
  List<String>? get salePointIds;

  /// policies
  @JsonKey(name: UpdatePriceListDto.policiesKey_)
  List<UpdatePriceListPolicyDto>? get policies;

  /// Create a copy of UpdatePriceListDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdatePriceListDtoCopyWith<UpdatePriceListDto> get copyWith =>
      _$UpdatePriceListDtoCopyWithImpl<UpdatePriceListDto>(
          this as UpdatePriceListDto, _$identity);

  /// Serializes this UpdatePriceListDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdatePriceListDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
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
      enabled,
      validFrom,
      validTo,
      const DeepCollectionEquality().hash(salePointIds),
      const DeepCollectionEquality().hash(policies));

  @override
  String toString() {
    return 'UpdatePriceListDto(name: $name, enabled: $enabled, validFrom: $validFrom, validTo: $validTo, salePointIds: $salePointIds, policies: $policies)';
  }
}

/// @nodoc
abstract mixin class $UpdatePriceListDtoCopyWith<$Res> {
  factory $UpdatePriceListDtoCopyWith(
          UpdatePriceListDto value, $Res Function(UpdatePriceListDto) _then) =
      _$UpdatePriceListDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: UpdatePriceListDto.nameKey_) String? name,
      @JsonKey(name: UpdatePriceListDto.enabledKey_) bool? enabled,
      @JsonKey(name: UpdatePriceListDto.validFromKey_) DateTime? validFrom,
      @JsonKey(name: UpdatePriceListDto.validToKey_) DateTime? validTo,
      @JsonKey(name: UpdatePriceListDto.salePointIdsKey_)
      List<String>? salePointIds,
      @JsonKey(name: UpdatePriceListDto.policiesKey_)
      List<UpdatePriceListPolicyDto>? policies});
}

/// @nodoc
class _$UpdatePriceListDtoCopyWithImpl<$Res>
    implements $UpdatePriceListDtoCopyWith<$Res> {
  _$UpdatePriceListDtoCopyWithImpl(this._self, this._then);

  final UpdatePriceListDto _self;
  final $Res Function(UpdatePriceListDto) _then;

  /// Create a copy of UpdatePriceListDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? enabled = freezed,
    Object? validFrom = freezed,
    Object? validTo = freezed,
    Object? salePointIds = freezed,
    Object? policies = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _self.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      salePointIds: freezed == salePointIds
          ? _self.salePointIds
          : salePointIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      policies: freezed == policies
          ? _self.policies
          : policies // ignore: cast_nullable_to_non_nullable
              as List<UpdatePriceListPolicyDto>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdatePriceListDto].
extension UpdatePriceListDtoPatterns on UpdatePriceListDto {
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
    TResult Function(_UpdatePriceListDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePriceListDto() when $default != null:
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
    TResult Function(_UpdatePriceListDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePriceListDto():
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
    TResult? Function(_UpdatePriceListDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePriceListDto() when $default != null:
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
            @JsonKey(name: UpdatePriceListDto.nameKey_) String? name,
            @JsonKey(name: UpdatePriceListDto.enabledKey_) bool? enabled,
            @JsonKey(name: UpdatePriceListDto.validFromKey_)
            DateTime? validFrom,
            @JsonKey(name: UpdatePriceListDto.validToKey_) DateTime? validTo,
            @JsonKey(name: UpdatePriceListDto.salePointIdsKey_)
            List<String>? salePointIds,
            @JsonKey(name: UpdatePriceListDto.policiesKey_)
            List<UpdatePriceListPolicyDto>? policies)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePriceListDto() when $default != null:
        return $default(_that.name, _that.enabled, _that.validFrom,
            _that.validTo, _that.salePointIds, _that.policies);
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
            @JsonKey(name: UpdatePriceListDto.nameKey_) String? name,
            @JsonKey(name: UpdatePriceListDto.enabledKey_) bool? enabled,
            @JsonKey(name: UpdatePriceListDto.validFromKey_)
            DateTime? validFrom,
            @JsonKey(name: UpdatePriceListDto.validToKey_) DateTime? validTo,
            @JsonKey(name: UpdatePriceListDto.salePointIdsKey_)
            List<String>? salePointIds,
            @JsonKey(name: UpdatePriceListDto.policiesKey_)
            List<UpdatePriceListPolicyDto>? policies)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePriceListDto():
        return $default(_that.name, _that.enabled, _that.validFrom,
            _that.validTo, _that.salePointIds, _that.policies);
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
            @JsonKey(name: UpdatePriceListDto.nameKey_) String? name,
            @JsonKey(name: UpdatePriceListDto.enabledKey_) bool? enabled,
            @JsonKey(name: UpdatePriceListDto.validFromKey_)
            DateTime? validFrom,
            @JsonKey(name: UpdatePriceListDto.validToKey_) DateTime? validTo,
            @JsonKey(name: UpdatePriceListDto.salePointIdsKey_)
            List<String>? salePointIds,
            @JsonKey(name: UpdatePriceListDto.policiesKey_)
            List<UpdatePriceListPolicyDto>? policies)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePriceListDto() when $default != null:
        return $default(_that.name, _that.enabled, _that.validFrom,
            _that.validTo, _that.salePointIds, _that.policies);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _UpdatePriceListDto extends UpdatePriceListDto {
  const _UpdatePriceListDto(
      {@JsonKey(name: UpdatePriceListDto.nameKey_) this.name,
      @JsonKey(name: UpdatePriceListDto.enabledKey_) this.enabled,
      @JsonKey(name: UpdatePriceListDto.validFromKey_) this.validFrom,
      @JsonKey(name: UpdatePriceListDto.validToKey_) this.validTo,
      @JsonKey(name: UpdatePriceListDto.salePointIdsKey_)
      final List<String>? salePointIds,
      @JsonKey(name: UpdatePriceListDto.policiesKey_)
      final List<UpdatePriceListPolicyDto>? policies})
      : _salePointIds = salePointIds,
        _policies = policies,
        super._();
  factory _UpdatePriceListDto.fromJson(Map<String, dynamic> json) =>
      _$UpdatePriceListDtoFromJson(json);

  /// name
  @override
  @JsonKey(name: UpdatePriceListDto.nameKey_)
  final String? name;

  /// enabled
  @override
  @JsonKey(name: UpdatePriceListDto.enabledKey_)
  final bool? enabled;

  /// validFrom
  @override
  @JsonKey(name: UpdatePriceListDto.validFromKey_)
  final DateTime? validFrom;

  /// validTo
  @override
  @JsonKey(name: UpdatePriceListDto.validToKey_)
  final DateTime? validTo;

  /// salePointIds
  final List<String>? _salePointIds;

  /// salePointIds
  @override
  @JsonKey(name: UpdatePriceListDto.salePointIdsKey_)
  List<String>? get salePointIds {
    final value = _salePointIds;
    if (value == null) return null;
    if (_salePointIds is EqualUnmodifiableListView) return _salePointIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// policies
  final List<UpdatePriceListPolicyDto>? _policies;

  /// policies
  @override
  @JsonKey(name: UpdatePriceListDto.policiesKey_)
  List<UpdatePriceListPolicyDto>? get policies {
    final value = _policies;
    if (value == null) return null;
    if (_policies is EqualUnmodifiableListView) return _policies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of UpdatePriceListDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdatePriceListDtoCopyWith<_UpdatePriceListDto> get copyWith =>
      __$UpdatePriceListDtoCopyWithImpl<_UpdatePriceListDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdatePriceListDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatePriceListDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
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
      enabled,
      validFrom,
      validTo,
      const DeepCollectionEquality().hash(_salePointIds),
      const DeepCollectionEquality().hash(_policies));

  @override
  String toString() {
    return 'UpdatePriceListDto(name: $name, enabled: $enabled, validFrom: $validFrom, validTo: $validTo, salePointIds: $salePointIds, policies: $policies)';
  }
}

/// @nodoc
abstract mixin class _$UpdatePriceListDtoCopyWith<$Res>
    implements $UpdatePriceListDtoCopyWith<$Res> {
  factory _$UpdatePriceListDtoCopyWith(
          _UpdatePriceListDto value, $Res Function(_UpdatePriceListDto) _then) =
      __$UpdatePriceListDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UpdatePriceListDto.nameKey_) String? name,
      @JsonKey(name: UpdatePriceListDto.enabledKey_) bool? enabled,
      @JsonKey(name: UpdatePriceListDto.validFromKey_) DateTime? validFrom,
      @JsonKey(name: UpdatePriceListDto.validToKey_) DateTime? validTo,
      @JsonKey(name: UpdatePriceListDto.salePointIdsKey_)
      List<String>? salePointIds,
      @JsonKey(name: UpdatePriceListDto.policiesKey_)
      List<UpdatePriceListPolicyDto>? policies});
}

/// @nodoc
class __$UpdatePriceListDtoCopyWithImpl<$Res>
    implements _$UpdatePriceListDtoCopyWith<$Res> {
  __$UpdatePriceListDtoCopyWithImpl(this._self, this._then);

  final _UpdatePriceListDto _self;
  final $Res Function(_UpdatePriceListDto) _then;

  /// Create a copy of UpdatePriceListDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? enabled = freezed,
    Object? validFrom = freezed,
    Object? validTo = freezed,
    Object? salePointIds = freezed,
    Object? policies = freezed,
  }) {
    return _then(_UpdatePriceListDto(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _self.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      salePointIds: freezed == salePointIds
          ? _self._salePointIds
          : salePointIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      policies: freezed == policies
          ? _self._policies
          : policies // ignore: cast_nullable_to_non_nullable
              as List<UpdatePriceListPolicyDto>?,
    ));
  }
}
