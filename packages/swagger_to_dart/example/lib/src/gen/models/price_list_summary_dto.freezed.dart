// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_list_summary_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceListSummaryDto {
  /// id
  @JsonKey(name: PriceListSummaryDto.idKey_)
  String get id;

  /// name
  @JsonKey(name: PriceListSummaryDto.nameKey_)
  String get name;

  /// enabled
  @JsonKey(name: PriceListSummaryDto.enabledKey_)
  bool get enabled;

  /// validFrom
  @JsonKey(name: PriceListSummaryDto.validFromKey_)
  DateTime? get validFrom;

  /// validTo
  @JsonKey(name: PriceListSummaryDto.validToKey_)
  DateTime? get validTo;

  /// isDefault
  @JsonKey(name: PriceListSummaryDto.isDefaultKey_)
  bool get isDefault;

  /// salePointCount
  @JsonKey(name: PriceListSummaryDto.salePointCountKey_)
  int get salePointCount;

  /// policyCount
  @JsonKey(name: PriceListSummaryDto.policyCountKey_)
  int get policyCount;

  /// Create a copy of PriceListSummaryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PriceListSummaryDtoCopyWith<PriceListSummaryDto> get copyWith =>
      _$PriceListSummaryDtoCopyWithImpl<PriceListSummaryDto>(
          this as PriceListSummaryDto, _$identity);

  /// Serializes this PriceListSummaryDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceListSummaryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validTo, validTo) || other.validTo == validTo) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.salePointCount, salePointCount) ||
                other.salePointCount == salePointCount) &&
            (identical(other.policyCount, policyCount) ||
                other.policyCount == policyCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, enabled, validFrom,
      validTo, isDefault, salePointCount, policyCount);

  @override
  String toString() {
    return 'PriceListSummaryDto(id: $id, name: $name, enabled: $enabled, validFrom: $validFrom, validTo: $validTo, isDefault: $isDefault, salePointCount: $salePointCount, policyCount: $policyCount)';
  }
}

/// @nodoc
abstract mixin class $PriceListSummaryDtoCopyWith<$Res> {
  factory $PriceListSummaryDtoCopyWith(
          PriceListSummaryDto value, $Res Function(PriceListSummaryDto) _then) =
      _$PriceListSummaryDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: PriceListSummaryDto.idKey_) String id,
      @JsonKey(name: PriceListSummaryDto.nameKey_) String name,
      @JsonKey(name: PriceListSummaryDto.enabledKey_) bool enabled,
      @JsonKey(name: PriceListSummaryDto.validFromKey_) DateTime? validFrom,
      @JsonKey(name: PriceListSummaryDto.validToKey_) DateTime? validTo,
      @JsonKey(name: PriceListSummaryDto.isDefaultKey_) bool isDefault,
      @JsonKey(name: PriceListSummaryDto.salePointCountKey_) int salePointCount,
      @JsonKey(name: PriceListSummaryDto.policyCountKey_) int policyCount});
}

/// @nodoc
class _$PriceListSummaryDtoCopyWithImpl<$Res>
    implements $PriceListSummaryDtoCopyWith<$Res> {
  _$PriceListSummaryDtoCopyWithImpl(this._self, this._then);

  final PriceListSummaryDto _self;
  final $Res Function(PriceListSummaryDto) _then;

  /// Create a copy of PriceListSummaryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? enabled = null,
    Object? validFrom = freezed,
    Object? validTo = freezed,
    Object? isDefault = null,
    Object? salePointCount = null,
    Object? policyCount = null,
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
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _self.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      salePointCount: null == salePointCount
          ? _self.salePointCount
          : salePointCount // ignore: cast_nullable_to_non_nullable
              as int,
      policyCount: null == policyCount
          ? _self.policyCount
          : policyCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [PriceListSummaryDto].
extension PriceListSummaryDtoPatterns on PriceListSummaryDto {
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
    TResult Function(_PriceListSummaryDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PriceListSummaryDto() when $default != null:
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
    TResult Function(_PriceListSummaryDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListSummaryDto():
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
    TResult? Function(_PriceListSummaryDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListSummaryDto() when $default != null:
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
            @JsonKey(name: PriceListSummaryDto.idKey_) String id,
            @JsonKey(name: PriceListSummaryDto.nameKey_) String name,
            @JsonKey(name: PriceListSummaryDto.enabledKey_) bool enabled,
            @JsonKey(name: PriceListSummaryDto.validFromKey_)
            DateTime? validFrom,
            @JsonKey(name: PriceListSummaryDto.validToKey_) DateTime? validTo,
            @JsonKey(name: PriceListSummaryDto.isDefaultKey_) bool isDefault,
            @JsonKey(name: PriceListSummaryDto.salePointCountKey_)
            int salePointCount,
            @JsonKey(name: PriceListSummaryDto.policyCountKey_)
            int policyCount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PriceListSummaryDto() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.enabled,
            _that.validFrom,
            _that.validTo,
            _that.isDefault,
            _that.salePointCount,
            _that.policyCount);
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
            @JsonKey(name: PriceListSummaryDto.idKey_) String id,
            @JsonKey(name: PriceListSummaryDto.nameKey_) String name,
            @JsonKey(name: PriceListSummaryDto.enabledKey_) bool enabled,
            @JsonKey(name: PriceListSummaryDto.validFromKey_)
            DateTime? validFrom,
            @JsonKey(name: PriceListSummaryDto.validToKey_) DateTime? validTo,
            @JsonKey(name: PriceListSummaryDto.isDefaultKey_) bool isDefault,
            @JsonKey(name: PriceListSummaryDto.salePointCountKey_)
            int salePointCount,
            @JsonKey(name: PriceListSummaryDto.policyCountKey_) int policyCount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListSummaryDto():
        return $default(
            _that.id,
            _that.name,
            _that.enabled,
            _that.validFrom,
            _that.validTo,
            _that.isDefault,
            _that.salePointCount,
            _that.policyCount);
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
            @JsonKey(name: PriceListSummaryDto.idKey_) String id,
            @JsonKey(name: PriceListSummaryDto.nameKey_) String name,
            @JsonKey(name: PriceListSummaryDto.enabledKey_) bool enabled,
            @JsonKey(name: PriceListSummaryDto.validFromKey_)
            DateTime? validFrom,
            @JsonKey(name: PriceListSummaryDto.validToKey_) DateTime? validTo,
            @JsonKey(name: PriceListSummaryDto.isDefaultKey_) bool isDefault,
            @JsonKey(name: PriceListSummaryDto.salePointCountKey_)
            int salePointCount,
            @JsonKey(name: PriceListSummaryDto.policyCountKey_)
            int policyCount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListSummaryDto() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.enabled,
            _that.validFrom,
            _that.validTo,
            _that.isDefault,
            _that.salePointCount,
            _that.policyCount);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PriceListSummaryDto extends PriceListSummaryDto {
  const _PriceListSummaryDto(
      {@JsonKey(name: PriceListSummaryDto.idKey_) required this.id,
      @JsonKey(name: PriceListSummaryDto.nameKey_) required this.name,
      @JsonKey(name: PriceListSummaryDto.enabledKey_) required this.enabled,
      @JsonKey(name: PriceListSummaryDto.validFromKey_) this.validFrom,
      @JsonKey(name: PriceListSummaryDto.validToKey_) this.validTo,
      @JsonKey(name: PriceListSummaryDto.isDefaultKey_) required this.isDefault,
      @JsonKey(name: PriceListSummaryDto.salePointCountKey_)
      required this.salePointCount,
      @JsonKey(name: PriceListSummaryDto.policyCountKey_)
      required this.policyCount})
      : super._();
  factory _PriceListSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$PriceListSummaryDtoFromJson(json);

  /// id
  @override
  @JsonKey(name: PriceListSummaryDto.idKey_)
  final String id;

  /// name
  @override
  @JsonKey(name: PriceListSummaryDto.nameKey_)
  final String name;

  /// enabled
  @override
  @JsonKey(name: PriceListSummaryDto.enabledKey_)
  final bool enabled;

  /// validFrom
  @override
  @JsonKey(name: PriceListSummaryDto.validFromKey_)
  final DateTime? validFrom;

  /// validTo
  @override
  @JsonKey(name: PriceListSummaryDto.validToKey_)
  final DateTime? validTo;

  /// isDefault
  @override
  @JsonKey(name: PriceListSummaryDto.isDefaultKey_)
  final bool isDefault;

  /// salePointCount
  @override
  @JsonKey(name: PriceListSummaryDto.salePointCountKey_)
  final int salePointCount;

  /// policyCount
  @override
  @JsonKey(name: PriceListSummaryDto.policyCountKey_)
  final int policyCount;

  /// Create a copy of PriceListSummaryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PriceListSummaryDtoCopyWith<_PriceListSummaryDto> get copyWith =>
      __$PriceListSummaryDtoCopyWithImpl<_PriceListSummaryDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PriceListSummaryDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PriceListSummaryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validTo, validTo) || other.validTo == validTo) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.salePointCount, salePointCount) ||
                other.salePointCount == salePointCount) &&
            (identical(other.policyCount, policyCount) ||
                other.policyCount == policyCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, enabled, validFrom,
      validTo, isDefault, salePointCount, policyCount);

  @override
  String toString() {
    return 'PriceListSummaryDto(id: $id, name: $name, enabled: $enabled, validFrom: $validFrom, validTo: $validTo, isDefault: $isDefault, salePointCount: $salePointCount, policyCount: $policyCount)';
  }
}

/// @nodoc
abstract mixin class _$PriceListSummaryDtoCopyWith<$Res>
    implements $PriceListSummaryDtoCopyWith<$Res> {
  factory _$PriceListSummaryDtoCopyWith(_PriceListSummaryDto value,
          $Res Function(_PriceListSummaryDto) _then) =
      __$PriceListSummaryDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: PriceListSummaryDto.idKey_) String id,
      @JsonKey(name: PriceListSummaryDto.nameKey_) String name,
      @JsonKey(name: PriceListSummaryDto.enabledKey_) bool enabled,
      @JsonKey(name: PriceListSummaryDto.validFromKey_) DateTime? validFrom,
      @JsonKey(name: PriceListSummaryDto.validToKey_) DateTime? validTo,
      @JsonKey(name: PriceListSummaryDto.isDefaultKey_) bool isDefault,
      @JsonKey(name: PriceListSummaryDto.salePointCountKey_) int salePointCount,
      @JsonKey(name: PriceListSummaryDto.policyCountKey_) int policyCount});
}

/// @nodoc
class __$PriceListSummaryDtoCopyWithImpl<$Res>
    implements _$PriceListSummaryDtoCopyWith<$Res> {
  __$PriceListSummaryDtoCopyWithImpl(this._self, this._then);

  final _PriceListSummaryDto _self;
  final $Res Function(_PriceListSummaryDto) _then;

  /// Create a copy of PriceListSummaryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? enabled = null,
    Object? validFrom = freezed,
    Object? validTo = freezed,
    Object? isDefault = null,
    Object? salePointCount = null,
    Object? policyCount = null,
  }) {
    return _then(_PriceListSummaryDto(
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
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _self.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      salePointCount: null == salePointCount
          ? _self.salePointCount
          : salePointCount // ignore: cast_nullable_to_non_nullable
              as int,
      policyCount: null == policyCount
          ? _self.policyCount
          : policyCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
