// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_price_list_policy_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePriceListPolicyDto {
  /// policyType
  @JsonKey(name: CreatePriceListPolicyDto.policyTypeKey_)
  PriceListPolicyPolicyType get policyType;

  /// policyTypeValue
  @JsonKey(name: CreatePriceListPolicyDto.policyTypeValueKey_)
  double get policyTypeValue;

  /// notes
  @JsonKey(name: CreatePriceListPolicyDto.notesKey_)
  String? get notes;

  /// items
  @JsonKey(name: CreatePriceListPolicyDto.itemsKey_)
  List<CreatePriceListPolicyItemDto> get items;

  /// Create a copy of CreatePriceListPolicyDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreatePriceListPolicyDtoCopyWith<CreatePriceListPolicyDto> get copyWith =>
      _$CreatePriceListPolicyDtoCopyWithImpl<CreatePriceListPolicyDto>(
          this as CreatePriceListPolicyDto, _$identity);

  /// Serializes this CreatePriceListPolicyDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatePriceListPolicyDto &&
            (identical(other.policyType, policyType) ||
                other.policyType == policyType) &&
            (identical(other.policyTypeValue, policyTypeValue) ||
                other.policyTypeValue == policyTypeValue) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, policyType, policyTypeValue,
      notes, const DeepCollectionEquality().hash(items));

  @override
  String toString() {
    return 'CreatePriceListPolicyDto(policyType: $policyType, policyTypeValue: $policyTypeValue, notes: $notes, items: $items)';
  }
}

/// @nodoc
abstract mixin class $CreatePriceListPolicyDtoCopyWith<$Res> {
  factory $CreatePriceListPolicyDtoCopyWith(CreatePriceListPolicyDto value,
          $Res Function(CreatePriceListPolicyDto) _then) =
      _$CreatePriceListPolicyDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CreatePriceListPolicyDto.policyTypeKey_)
      PriceListPolicyPolicyType policyType,
      @JsonKey(name: CreatePriceListPolicyDto.policyTypeValueKey_)
      double policyTypeValue,
      @JsonKey(name: CreatePriceListPolicyDto.notesKey_) String? notes,
      @JsonKey(name: CreatePriceListPolicyDto.itemsKey_)
      List<CreatePriceListPolicyItemDto> items});
}

/// @nodoc
class _$CreatePriceListPolicyDtoCopyWithImpl<$Res>
    implements $CreatePriceListPolicyDtoCopyWith<$Res> {
  _$CreatePriceListPolicyDtoCopyWithImpl(this._self, this._then);

  final CreatePriceListPolicyDto _self;
  final $Res Function(CreatePriceListPolicyDto) _then;

  /// Create a copy of CreatePriceListPolicyDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? policyType = null,
    Object? policyTypeValue = null,
    Object? notes = freezed,
    Object? items = null,
  }) {
    return _then(_self.copyWith(
      policyType: null == policyType
          ? _self.policyType
          : policyType // ignore: cast_nullable_to_non_nullable
              as PriceListPolicyPolicyType,
      policyTypeValue: null == policyTypeValue
          ? _self.policyTypeValue
          : policyTypeValue // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CreatePriceListPolicyItemDto>,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreatePriceListPolicyDto].
extension CreatePriceListPolicyDtoPatterns on CreatePriceListPolicyDto {
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
    TResult Function(_CreatePriceListPolicyDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePriceListPolicyDto() when $default != null:
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
    TResult Function(_CreatePriceListPolicyDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePriceListPolicyDto():
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
    TResult? Function(_CreatePriceListPolicyDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePriceListPolicyDto() when $default != null:
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
            @JsonKey(name: CreatePriceListPolicyDto.policyTypeKey_)
            PriceListPolicyPolicyType policyType,
            @JsonKey(name: CreatePriceListPolicyDto.policyTypeValueKey_)
            double policyTypeValue,
            @JsonKey(name: CreatePriceListPolicyDto.notesKey_) String? notes,
            @JsonKey(name: CreatePriceListPolicyDto.itemsKey_)
            List<CreatePriceListPolicyItemDto> items)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePriceListPolicyDto() when $default != null:
        return $default(
            _that.policyType, _that.policyTypeValue, _that.notes, _that.items);
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
            @JsonKey(name: CreatePriceListPolicyDto.policyTypeKey_)
            PriceListPolicyPolicyType policyType,
            @JsonKey(name: CreatePriceListPolicyDto.policyTypeValueKey_)
            double policyTypeValue,
            @JsonKey(name: CreatePriceListPolicyDto.notesKey_) String? notes,
            @JsonKey(name: CreatePriceListPolicyDto.itemsKey_)
            List<CreatePriceListPolicyItemDto> items)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePriceListPolicyDto():
        return $default(
            _that.policyType, _that.policyTypeValue, _that.notes, _that.items);
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
            @JsonKey(name: CreatePriceListPolicyDto.policyTypeKey_)
            PriceListPolicyPolicyType policyType,
            @JsonKey(name: CreatePriceListPolicyDto.policyTypeValueKey_)
            double policyTypeValue,
            @JsonKey(name: CreatePriceListPolicyDto.notesKey_) String? notes,
            @JsonKey(name: CreatePriceListPolicyDto.itemsKey_)
            List<CreatePriceListPolicyItemDto> items)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePriceListPolicyDto() when $default != null:
        return $default(
            _that.policyType, _that.policyTypeValue, _that.notes, _that.items);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _CreatePriceListPolicyDto extends CreatePriceListPolicyDto {
  const _CreatePriceListPolicyDto(
      {@JsonKey(name: CreatePriceListPolicyDto.policyTypeKey_)
      required this.policyType,
      @JsonKey(name: CreatePriceListPolicyDto.policyTypeValueKey_)
      required this.policyTypeValue,
      @JsonKey(name: CreatePriceListPolicyDto.notesKey_) this.notes,
      @JsonKey(name: CreatePriceListPolicyDto.itemsKey_)
      required final List<CreatePriceListPolicyItemDto> items})
      : _items = items,
        super._();
  factory _CreatePriceListPolicyDto.fromJson(Map<String, dynamic> json) =>
      _$CreatePriceListPolicyDtoFromJson(json);

  /// policyType
  @override
  @JsonKey(name: CreatePriceListPolicyDto.policyTypeKey_)
  final PriceListPolicyPolicyType policyType;

  /// policyTypeValue
  @override
  @JsonKey(name: CreatePriceListPolicyDto.policyTypeValueKey_)
  final double policyTypeValue;

  /// notes
  @override
  @JsonKey(name: CreatePriceListPolicyDto.notesKey_)
  final String? notes;

  /// items
  final List<CreatePriceListPolicyItemDto> _items;

  /// items
  @override
  @JsonKey(name: CreatePriceListPolicyDto.itemsKey_)
  List<CreatePriceListPolicyItemDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// Create a copy of CreatePriceListPolicyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreatePriceListPolicyDtoCopyWith<_CreatePriceListPolicyDto> get copyWith =>
      __$CreatePriceListPolicyDtoCopyWithImpl<_CreatePriceListPolicyDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreatePriceListPolicyDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePriceListPolicyDto &&
            (identical(other.policyType, policyType) ||
                other.policyType == policyType) &&
            (identical(other.policyTypeValue, policyTypeValue) ||
                other.policyTypeValue == policyTypeValue) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, policyType, policyTypeValue,
      notes, const DeepCollectionEquality().hash(_items));

  @override
  String toString() {
    return 'CreatePriceListPolicyDto(policyType: $policyType, policyTypeValue: $policyTypeValue, notes: $notes, items: $items)';
  }
}

/// @nodoc
abstract mixin class _$CreatePriceListPolicyDtoCopyWith<$Res>
    implements $CreatePriceListPolicyDtoCopyWith<$Res> {
  factory _$CreatePriceListPolicyDtoCopyWith(_CreatePriceListPolicyDto value,
          $Res Function(_CreatePriceListPolicyDto) _then) =
      __$CreatePriceListPolicyDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CreatePriceListPolicyDto.policyTypeKey_)
      PriceListPolicyPolicyType policyType,
      @JsonKey(name: CreatePriceListPolicyDto.policyTypeValueKey_)
      double policyTypeValue,
      @JsonKey(name: CreatePriceListPolicyDto.notesKey_) String? notes,
      @JsonKey(name: CreatePriceListPolicyDto.itemsKey_)
      List<CreatePriceListPolicyItemDto> items});
}

/// @nodoc
class __$CreatePriceListPolicyDtoCopyWithImpl<$Res>
    implements _$CreatePriceListPolicyDtoCopyWith<$Res> {
  __$CreatePriceListPolicyDtoCopyWithImpl(this._self, this._then);

  final _CreatePriceListPolicyDto _self;
  final $Res Function(_CreatePriceListPolicyDto) _then;

  /// Create a copy of CreatePriceListPolicyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? policyType = null,
    Object? policyTypeValue = null,
    Object? notes = freezed,
    Object? items = null,
  }) {
    return _then(_CreatePriceListPolicyDto(
      policyType: null == policyType
          ? _self.policyType
          : policyType // ignore: cast_nullable_to_non_nullable
              as PriceListPolicyPolicyType,
      policyTypeValue: null == policyTypeValue
          ? _self.policyTypeValue
          : policyTypeValue // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CreatePriceListPolicyItemDto>,
    ));
  }
}
