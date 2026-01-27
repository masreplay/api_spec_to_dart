// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceListDto {
  /// id
  @JsonKey(name: PriceListDto.idKey_)
  String get id;

  /// name
  @JsonKey(name: PriceListDto.nameKey_)
  String get name;

  /// enabled
  @JsonKey(name: PriceListDto.enabledKey_)
  bool get enabled;

  /// isDefault
  @JsonKey(name: PriceListDto.isDefaultKey_)
  bool get isDefault;

  /// validFrom
  @JsonKey(name: PriceListDto.validFromKey_)
  DateTime? get validFrom;

  /// validTo
  @JsonKey(name: PriceListDto.validToKey_)
  DateTime? get validTo;

  /// salePoints
  @JsonKey(name: PriceListDto.salePointsKey_)
  List<PriceListSalePointDto> get salePoints;

  /// policies
  @JsonKey(name: PriceListDto.policiesKey_)
  List<PriceListPolicyDto> get policies;

  /// Create a copy of PriceListDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PriceListDtoCopyWith<PriceListDto> get copyWith =>
      _$PriceListDtoCopyWithImpl<PriceListDto>(
          this as PriceListDto, _$identity);

  /// Serializes this PriceListDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceListDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validTo, validTo) || other.validTo == validTo) &&
            const DeepCollectionEquality()
                .equals(other.salePoints, salePoints) &&
            const DeepCollectionEquality().equals(other.policies, policies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      enabled,
      isDefault,
      validFrom,
      validTo,
      const DeepCollectionEquality().hash(salePoints),
      const DeepCollectionEquality().hash(policies));

  @override
  String toString() {
    return 'PriceListDto(id: $id, name: $name, enabled: $enabled, isDefault: $isDefault, validFrom: $validFrom, validTo: $validTo, salePoints: $salePoints, policies: $policies)';
  }
}

/// @nodoc
abstract mixin class $PriceListDtoCopyWith<$Res> {
  factory $PriceListDtoCopyWith(
          PriceListDto value, $Res Function(PriceListDto) _then) =
      _$PriceListDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: PriceListDto.idKey_) String id,
      @JsonKey(name: PriceListDto.nameKey_) String name,
      @JsonKey(name: PriceListDto.enabledKey_) bool enabled,
      @JsonKey(name: PriceListDto.isDefaultKey_) bool isDefault,
      @JsonKey(name: PriceListDto.validFromKey_) DateTime? validFrom,
      @JsonKey(name: PriceListDto.validToKey_) DateTime? validTo,
      @JsonKey(name: PriceListDto.salePointsKey_)
      List<PriceListSalePointDto> salePoints,
      @JsonKey(name: PriceListDto.policiesKey_)
      List<PriceListPolicyDto> policies});
}

/// @nodoc
class _$PriceListDtoCopyWithImpl<$Res> implements $PriceListDtoCopyWith<$Res> {
  _$PriceListDtoCopyWithImpl(this._self, this._then);

  final PriceListDto _self;
  final $Res Function(PriceListDto) _then;

  /// Create a copy of PriceListDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? enabled = null,
    Object? isDefault = null,
    Object? validFrom = freezed,
    Object? validTo = freezed,
    Object? salePoints = null,
    Object? policies = null,
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
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _self.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      salePoints: null == salePoints
          ? _self.salePoints
          : salePoints // ignore: cast_nullable_to_non_nullable
              as List<PriceListSalePointDto>,
      policies: null == policies
          ? _self.policies
          : policies // ignore: cast_nullable_to_non_nullable
              as List<PriceListPolicyDto>,
    ));
  }
}

/// Adds pattern-matching-related methods to [PriceListDto].
extension PriceListDtoPatterns on PriceListDto {
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
    TResult Function(_PriceListDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PriceListDto() when $default != null:
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
    TResult Function(_PriceListDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListDto():
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
    TResult? Function(_PriceListDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListDto() when $default != null:
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
            @JsonKey(name: PriceListDto.idKey_) String id,
            @JsonKey(name: PriceListDto.nameKey_) String name,
            @JsonKey(name: PriceListDto.enabledKey_) bool enabled,
            @JsonKey(name: PriceListDto.isDefaultKey_) bool isDefault,
            @JsonKey(name: PriceListDto.validFromKey_) DateTime? validFrom,
            @JsonKey(name: PriceListDto.validToKey_) DateTime? validTo,
            @JsonKey(name: PriceListDto.salePointsKey_)
            List<PriceListSalePointDto> salePoints,
            @JsonKey(name: PriceListDto.policiesKey_)
            List<PriceListPolicyDto> policies)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PriceListDto() when $default != null:
        return $default(_that.id, _that.name, _that.enabled, _that.isDefault,
            _that.validFrom, _that.validTo, _that.salePoints, _that.policies);
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
            @JsonKey(name: PriceListDto.idKey_) String id,
            @JsonKey(name: PriceListDto.nameKey_) String name,
            @JsonKey(name: PriceListDto.enabledKey_) bool enabled,
            @JsonKey(name: PriceListDto.isDefaultKey_) bool isDefault,
            @JsonKey(name: PriceListDto.validFromKey_) DateTime? validFrom,
            @JsonKey(name: PriceListDto.validToKey_) DateTime? validTo,
            @JsonKey(name: PriceListDto.salePointsKey_)
            List<PriceListSalePointDto> salePoints,
            @JsonKey(name: PriceListDto.policiesKey_)
            List<PriceListPolicyDto> policies)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListDto():
        return $default(_that.id, _that.name, _that.enabled, _that.isDefault,
            _that.validFrom, _that.validTo, _that.salePoints, _that.policies);
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
            @JsonKey(name: PriceListDto.idKey_) String id,
            @JsonKey(name: PriceListDto.nameKey_) String name,
            @JsonKey(name: PriceListDto.enabledKey_) bool enabled,
            @JsonKey(name: PriceListDto.isDefaultKey_) bool isDefault,
            @JsonKey(name: PriceListDto.validFromKey_) DateTime? validFrom,
            @JsonKey(name: PriceListDto.validToKey_) DateTime? validTo,
            @JsonKey(name: PriceListDto.salePointsKey_)
            List<PriceListSalePointDto> salePoints,
            @JsonKey(name: PriceListDto.policiesKey_)
            List<PriceListPolicyDto> policies)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListDto() when $default != null:
        return $default(_that.id, _that.name, _that.enabled, _that.isDefault,
            _that.validFrom, _that.validTo, _that.salePoints, _that.policies);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PriceListDto extends PriceListDto {
  const _PriceListDto(
      {@JsonKey(name: PriceListDto.idKey_) required this.id,
      @JsonKey(name: PriceListDto.nameKey_) required this.name,
      @JsonKey(name: PriceListDto.enabledKey_) required this.enabled,
      @JsonKey(name: PriceListDto.isDefaultKey_) required this.isDefault,
      @JsonKey(name: PriceListDto.validFromKey_) this.validFrom,
      @JsonKey(name: PriceListDto.validToKey_) this.validTo,
      @JsonKey(name: PriceListDto.salePointsKey_)
      required final List<PriceListSalePointDto> salePoints,
      @JsonKey(name: PriceListDto.policiesKey_)
      required final List<PriceListPolicyDto> policies})
      : _salePoints = salePoints,
        _policies = policies,
        super._();
  factory _PriceListDto.fromJson(Map<String, dynamic> json) =>
      _$PriceListDtoFromJson(json);

  /// id
  @override
  @JsonKey(name: PriceListDto.idKey_)
  final String id;

  /// name
  @override
  @JsonKey(name: PriceListDto.nameKey_)
  final String name;

  /// enabled
  @override
  @JsonKey(name: PriceListDto.enabledKey_)
  final bool enabled;

  /// isDefault
  @override
  @JsonKey(name: PriceListDto.isDefaultKey_)
  final bool isDefault;

  /// validFrom
  @override
  @JsonKey(name: PriceListDto.validFromKey_)
  final DateTime? validFrom;

  /// validTo
  @override
  @JsonKey(name: PriceListDto.validToKey_)
  final DateTime? validTo;

  /// salePoints
  final List<PriceListSalePointDto> _salePoints;

  /// salePoints
  @override
  @JsonKey(name: PriceListDto.salePointsKey_)
  List<PriceListSalePointDto> get salePoints {
    if (_salePoints is EqualUnmodifiableListView) return _salePoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_salePoints);
  }

  /// policies
  final List<PriceListPolicyDto> _policies;

  /// policies
  @override
  @JsonKey(name: PriceListDto.policiesKey_)
  List<PriceListPolicyDto> get policies {
    if (_policies is EqualUnmodifiableListView) return _policies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_policies);
  }

  /// Create a copy of PriceListDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PriceListDtoCopyWith<_PriceListDto> get copyWith =>
      __$PriceListDtoCopyWithImpl<_PriceListDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PriceListDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PriceListDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validTo, validTo) || other.validTo == validTo) &&
            const DeepCollectionEquality()
                .equals(other._salePoints, _salePoints) &&
            const DeepCollectionEquality().equals(other._policies, _policies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      enabled,
      isDefault,
      validFrom,
      validTo,
      const DeepCollectionEquality().hash(_salePoints),
      const DeepCollectionEquality().hash(_policies));

  @override
  String toString() {
    return 'PriceListDto(id: $id, name: $name, enabled: $enabled, isDefault: $isDefault, validFrom: $validFrom, validTo: $validTo, salePoints: $salePoints, policies: $policies)';
  }
}

/// @nodoc
abstract mixin class _$PriceListDtoCopyWith<$Res>
    implements $PriceListDtoCopyWith<$Res> {
  factory _$PriceListDtoCopyWith(
          _PriceListDto value, $Res Function(_PriceListDto) _then) =
      __$PriceListDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: PriceListDto.idKey_) String id,
      @JsonKey(name: PriceListDto.nameKey_) String name,
      @JsonKey(name: PriceListDto.enabledKey_) bool enabled,
      @JsonKey(name: PriceListDto.isDefaultKey_) bool isDefault,
      @JsonKey(name: PriceListDto.validFromKey_) DateTime? validFrom,
      @JsonKey(name: PriceListDto.validToKey_) DateTime? validTo,
      @JsonKey(name: PriceListDto.salePointsKey_)
      List<PriceListSalePointDto> salePoints,
      @JsonKey(name: PriceListDto.policiesKey_)
      List<PriceListPolicyDto> policies});
}

/// @nodoc
class __$PriceListDtoCopyWithImpl<$Res>
    implements _$PriceListDtoCopyWith<$Res> {
  __$PriceListDtoCopyWithImpl(this._self, this._then);

  final _PriceListDto _self;
  final $Res Function(_PriceListDto) _then;

  /// Create a copy of PriceListDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? enabled = null,
    Object? isDefault = null,
    Object? validFrom = freezed,
    Object? validTo = freezed,
    Object? salePoints = null,
    Object? policies = null,
  }) {
    return _then(_PriceListDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _self.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      salePoints: null == salePoints
          ? _self._salePoints
          : salePoints // ignore: cast_nullable_to_non_nullable
              as List<PriceListSalePointDto>,
      policies: null == policies
          ? _self._policies
          : policies // ignore: cast_nullable_to_non_nullable
              as List<PriceListPolicyDto>,
    ));
  }
}
