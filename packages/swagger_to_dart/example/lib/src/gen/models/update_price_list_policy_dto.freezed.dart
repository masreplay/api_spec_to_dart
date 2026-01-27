// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_price_list_policy_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdatePriceListPolicyDto {
  /// id
  @JsonKey(name: UpdatePriceListPolicyDto.idKey_)
  String? get id;

  /// policyType
  @JsonKey(name: UpdatePriceListPolicyDto.policyTypeKey_)
  PriceListPolicyPolicyType? get policyType;

  /// policyTypeValue
  @JsonKey(name: UpdatePriceListPolicyDto.policyTypeValueKey_)
  double? get policyTypeValue;

  /// enabled
  @JsonKey(name: UpdatePriceListPolicyDto.enabledKey_)
  bool? get enabled;

  /// notes
  @JsonKey(name: UpdatePriceListPolicyDto.notesKey_)
  String? get notes;

  /// items
  @JsonKey(name: UpdatePriceListPolicyDto.itemsKey_)
  List<UpdatePriceListPolicyItemDto>? get items;

  /// Create a copy of UpdatePriceListPolicyDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdatePriceListPolicyDtoCopyWith<UpdatePriceListPolicyDto> get copyWith =>
      _$UpdatePriceListPolicyDtoCopyWithImpl<UpdatePriceListPolicyDto>(
          this as UpdatePriceListPolicyDto, _$identity);

  /// Serializes this UpdatePriceListPolicyDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdatePriceListPolicyDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.policyType, policyType) ||
                other.policyType == policyType) &&
            (identical(other.policyTypeValue, policyTypeValue) ||
                other.policyTypeValue == policyTypeValue) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, policyType, policyTypeValue,
      enabled, notes, const DeepCollectionEquality().hash(items));

  @override
  String toString() {
    return 'UpdatePriceListPolicyDto(id: $id, policyType: $policyType, policyTypeValue: $policyTypeValue, enabled: $enabled, notes: $notes, items: $items)';
  }
}

/// @nodoc
abstract mixin class $UpdatePriceListPolicyDtoCopyWith<$Res> {
  factory $UpdatePriceListPolicyDtoCopyWith(UpdatePriceListPolicyDto value,
          $Res Function(UpdatePriceListPolicyDto) _then) =
      _$UpdatePriceListPolicyDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: UpdatePriceListPolicyDto.idKey_) String? id,
      @JsonKey(name: UpdatePriceListPolicyDto.policyTypeKey_)
      PriceListPolicyPolicyType? policyType,
      @JsonKey(name: UpdatePriceListPolicyDto.policyTypeValueKey_)
      double? policyTypeValue,
      @JsonKey(name: UpdatePriceListPolicyDto.enabledKey_) bool? enabled,
      @JsonKey(name: UpdatePriceListPolicyDto.notesKey_) String? notes,
      @JsonKey(name: UpdatePriceListPolicyDto.itemsKey_)
      List<UpdatePriceListPolicyItemDto>? items});
}

/// @nodoc
class _$UpdatePriceListPolicyDtoCopyWithImpl<$Res>
    implements $UpdatePriceListPolicyDtoCopyWith<$Res> {
  _$UpdatePriceListPolicyDtoCopyWithImpl(this._self, this._then);

  final UpdatePriceListPolicyDto _self;
  final $Res Function(UpdatePriceListPolicyDto) _then;

  /// Create a copy of UpdatePriceListPolicyDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? policyType = freezed,
    Object? policyTypeValue = freezed,
    Object? enabled = freezed,
    Object? notes = freezed,
    Object? items = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      policyType: freezed == policyType
          ? _self.policyType
          : policyType // ignore: cast_nullable_to_non_nullable
              as PriceListPolicyPolicyType?,
      policyTypeValue: freezed == policyTypeValue
          ? _self.policyTypeValue
          : policyTypeValue // ignore: cast_nullable_to_non_nullable
              as double?,
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<UpdatePriceListPolicyItemDto>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdatePriceListPolicyDto].
extension UpdatePriceListPolicyDtoPatterns on UpdatePriceListPolicyDto {
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
    TResult Function(_UpdatePriceListPolicyDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePriceListPolicyDto() when $default != null:
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
    TResult Function(_UpdatePriceListPolicyDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePriceListPolicyDto():
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
    TResult? Function(_UpdatePriceListPolicyDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePriceListPolicyDto() when $default != null:
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
            @JsonKey(name: UpdatePriceListPolicyDto.idKey_) String? id,
            @JsonKey(name: UpdatePriceListPolicyDto.policyTypeKey_)
            PriceListPolicyPolicyType? policyType,
            @JsonKey(name: UpdatePriceListPolicyDto.policyTypeValueKey_)
            double? policyTypeValue,
            @JsonKey(name: UpdatePriceListPolicyDto.enabledKey_) bool? enabled,
            @JsonKey(name: UpdatePriceListPolicyDto.notesKey_) String? notes,
            @JsonKey(name: UpdatePriceListPolicyDto.itemsKey_)
            List<UpdatePriceListPolicyItemDto>? items)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePriceListPolicyDto() when $default != null:
        return $default(_that.id, _that.policyType, _that.policyTypeValue,
            _that.enabled, _that.notes, _that.items);
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
            @JsonKey(name: UpdatePriceListPolicyDto.idKey_) String? id,
            @JsonKey(name: UpdatePriceListPolicyDto.policyTypeKey_)
            PriceListPolicyPolicyType? policyType,
            @JsonKey(name: UpdatePriceListPolicyDto.policyTypeValueKey_)
            double? policyTypeValue,
            @JsonKey(name: UpdatePriceListPolicyDto.enabledKey_) bool? enabled,
            @JsonKey(name: UpdatePriceListPolicyDto.notesKey_) String? notes,
            @JsonKey(name: UpdatePriceListPolicyDto.itemsKey_)
            List<UpdatePriceListPolicyItemDto>? items)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePriceListPolicyDto():
        return $default(_that.id, _that.policyType, _that.policyTypeValue,
            _that.enabled, _that.notes, _that.items);
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
            @JsonKey(name: UpdatePriceListPolicyDto.idKey_) String? id,
            @JsonKey(name: UpdatePriceListPolicyDto.policyTypeKey_)
            PriceListPolicyPolicyType? policyType,
            @JsonKey(name: UpdatePriceListPolicyDto.policyTypeValueKey_)
            double? policyTypeValue,
            @JsonKey(name: UpdatePriceListPolicyDto.enabledKey_) bool? enabled,
            @JsonKey(name: UpdatePriceListPolicyDto.notesKey_) String? notes,
            @JsonKey(name: UpdatePriceListPolicyDto.itemsKey_)
            List<UpdatePriceListPolicyItemDto>? items)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePriceListPolicyDto() when $default != null:
        return $default(_that.id, _that.policyType, _that.policyTypeValue,
            _that.enabled, _that.notes, _that.items);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _UpdatePriceListPolicyDto extends UpdatePriceListPolicyDto {
  const _UpdatePriceListPolicyDto(
      {@JsonKey(name: UpdatePriceListPolicyDto.idKey_) this.id,
      @JsonKey(name: UpdatePriceListPolicyDto.policyTypeKey_) this.policyType,
      @JsonKey(name: UpdatePriceListPolicyDto.policyTypeValueKey_)
      this.policyTypeValue,
      @JsonKey(name: UpdatePriceListPolicyDto.enabledKey_) this.enabled,
      @JsonKey(name: UpdatePriceListPolicyDto.notesKey_) this.notes,
      @JsonKey(name: UpdatePriceListPolicyDto.itemsKey_)
      final List<UpdatePriceListPolicyItemDto>? items})
      : _items = items,
        super._();
  factory _UpdatePriceListPolicyDto.fromJson(Map<String, dynamic> json) =>
      _$UpdatePriceListPolicyDtoFromJson(json);

  /// id
  @override
  @JsonKey(name: UpdatePriceListPolicyDto.idKey_)
  final String? id;

  /// policyType
  @override
  @JsonKey(name: UpdatePriceListPolicyDto.policyTypeKey_)
  final PriceListPolicyPolicyType? policyType;

  /// policyTypeValue
  @override
  @JsonKey(name: UpdatePriceListPolicyDto.policyTypeValueKey_)
  final double? policyTypeValue;

  /// enabled
  @override
  @JsonKey(name: UpdatePriceListPolicyDto.enabledKey_)
  final bool? enabled;

  /// notes
  @override
  @JsonKey(name: UpdatePriceListPolicyDto.notesKey_)
  final String? notes;

  /// items
  final List<UpdatePriceListPolicyItemDto>? _items;

  /// items
  @override
  @JsonKey(name: UpdatePriceListPolicyDto.itemsKey_)
  List<UpdatePriceListPolicyItemDto>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of UpdatePriceListPolicyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdatePriceListPolicyDtoCopyWith<_UpdatePriceListPolicyDto> get copyWith =>
      __$UpdatePriceListPolicyDtoCopyWithImpl<_UpdatePriceListPolicyDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdatePriceListPolicyDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatePriceListPolicyDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.policyType, policyType) ||
                other.policyType == policyType) &&
            (identical(other.policyTypeValue, policyTypeValue) ||
                other.policyTypeValue == policyTypeValue) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, policyType, policyTypeValue,
      enabled, notes, const DeepCollectionEquality().hash(_items));

  @override
  String toString() {
    return 'UpdatePriceListPolicyDto(id: $id, policyType: $policyType, policyTypeValue: $policyTypeValue, enabled: $enabled, notes: $notes, items: $items)';
  }
}

/// @nodoc
abstract mixin class _$UpdatePriceListPolicyDtoCopyWith<$Res>
    implements $UpdatePriceListPolicyDtoCopyWith<$Res> {
  factory _$UpdatePriceListPolicyDtoCopyWith(_UpdatePriceListPolicyDto value,
          $Res Function(_UpdatePriceListPolicyDto) _then) =
      __$UpdatePriceListPolicyDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UpdatePriceListPolicyDto.idKey_) String? id,
      @JsonKey(name: UpdatePriceListPolicyDto.policyTypeKey_)
      PriceListPolicyPolicyType? policyType,
      @JsonKey(name: UpdatePriceListPolicyDto.policyTypeValueKey_)
      double? policyTypeValue,
      @JsonKey(name: UpdatePriceListPolicyDto.enabledKey_) bool? enabled,
      @JsonKey(name: UpdatePriceListPolicyDto.notesKey_) String? notes,
      @JsonKey(name: UpdatePriceListPolicyDto.itemsKey_)
      List<UpdatePriceListPolicyItemDto>? items});
}

/// @nodoc
class __$UpdatePriceListPolicyDtoCopyWithImpl<$Res>
    implements _$UpdatePriceListPolicyDtoCopyWith<$Res> {
  __$UpdatePriceListPolicyDtoCopyWithImpl(this._self, this._then);

  final _UpdatePriceListPolicyDto _self;
  final $Res Function(_UpdatePriceListPolicyDto) _then;

  /// Create a copy of UpdatePriceListPolicyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? policyType = freezed,
    Object? policyTypeValue = freezed,
    Object? enabled = freezed,
    Object? notes = freezed,
    Object? items = freezed,
  }) {
    return _then(_UpdatePriceListPolicyDto(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      policyType: freezed == policyType
          ? _self.policyType
          : policyType // ignore: cast_nullable_to_non_nullable
              as PriceListPolicyPolicyType?,
      policyTypeValue: freezed == policyTypeValue
          ? _self.policyTypeValue
          : policyTypeValue // ignore: cast_nullable_to_non_nullable
              as double?,
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<UpdatePriceListPolicyItemDto>?,
    ));
  }
}
