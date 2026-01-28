// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_list_policy_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceListPolicyDto {
  /// id
  @JsonKey(name: PriceListPolicyDto.idKey_)
  String get id;

  /// policyType
  @JsonKey(name: PriceListPolicyDto.policyTypeKey_)
  PriceListPolicyPolicyType get policyType;

  /// policyTypeValue
  @JsonKey(name: PriceListPolicyDto.policyTypeValueKey_)
  double get policyTypeValue;

  /// enabled
  @JsonKey(name: PriceListPolicyDto.enabledKey_)
  bool get enabled;

  /// notes
  @JsonKey(name: PriceListPolicyDto.notesKey_)
  String? get notes;

  /// items
  @JsonKey(name: PriceListPolicyDto.itemsKey_)
  List<PriceListPolicyItemDto> get items;

  /// Create a copy of PriceListPolicyDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PriceListPolicyDtoCopyWith<PriceListPolicyDto> get copyWith =>
      _$PriceListPolicyDtoCopyWithImpl<PriceListPolicyDto>(
          this as PriceListPolicyDto, _$identity);

  /// Serializes this PriceListPolicyDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceListPolicyDto &&
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
    return 'PriceListPolicyDto(id: $id, policyType: $policyType, policyTypeValue: $policyTypeValue, enabled: $enabled, notes: $notes, items: $items)';
  }
}

/// @nodoc
abstract mixin class $PriceListPolicyDtoCopyWith<$Res> {
  factory $PriceListPolicyDtoCopyWith(
          PriceListPolicyDto value, $Res Function(PriceListPolicyDto) _then) =
      _$PriceListPolicyDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: PriceListPolicyDto.idKey_) String id,
      @JsonKey(name: PriceListPolicyDto.policyTypeKey_)
      PriceListPolicyPolicyType policyType,
      @JsonKey(name: PriceListPolicyDto.policyTypeValueKey_)
      double policyTypeValue,
      @JsonKey(name: PriceListPolicyDto.enabledKey_) bool enabled,
      @JsonKey(name: PriceListPolicyDto.notesKey_) String? notes,
      @JsonKey(name: PriceListPolicyDto.itemsKey_)
      List<PriceListPolicyItemDto> items});
}

/// @nodoc
class _$PriceListPolicyDtoCopyWithImpl<$Res>
    implements $PriceListPolicyDtoCopyWith<$Res> {
  _$PriceListPolicyDtoCopyWithImpl(this._self, this._then);

  final PriceListPolicyDto _self;
  final $Res Function(PriceListPolicyDto) _then;

  /// Create a copy of PriceListPolicyDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? policyType = null,
    Object? policyTypeValue = null,
    Object? enabled = null,
    Object? notes = freezed,
    Object? items = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      policyType: null == policyType
          ? _self.policyType
          : policyType // ignore: cast_nullable_to_non_nullable
              as PriceListPolicyPolicyType,
      policyTypeValue: null == policyTypeValue
          ? _self.policyTypeValue
          : policyTypeValue // ignore: cast_nullable_to_non_nullable
              as double,
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PriceListPolicyItemDto>,
    ));
  }
}

/// Adds pattern-matching-related methods to [PriceListPolicyDto].
extension PriceListPolicyDtoPatterns on PriceListPolicyDto {
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
    TResult Function(_PriceListPolicyDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PriceListPolicyDto() when $default != null:
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
    TResult Function(_PriceListPolicyDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListPolicyDto():
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
    TResult? Function(_PriceListPolicyDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListPolicyDto() when $default != null:
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
            @JsonKey(name: PriceListPolicyDto.idKey_) String id,
            @JsonKey(name: PriceListPolicyDto.policyTypeKey_)
            PriceListPolicyPolicyType policyType,
            @JsonKey(name: PriceListPolicyDto.policyTypeValueKey_)
            double policyTypeValue,
            @JsonKey(name: PriceListPolicyDto.enabledKey_) bool enabled,
            @JsonKey(name: PriceListPolicyDto.notesKey_) String? notes,
            @JsonKey(name: PriceListPolicyDto.itemsKey_)
            List<PriceListPolicyItemDto> items)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PriceListPolicyDto() when $default != null:
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
            @JsonKey(name: PriceListPolicyDto.idKey_) String id,
            @JsonKey(name: PriceListPolicyDto.policyTypeKey_)
            PriceListPolicyPolicyType policyType,
            @JsonKey(name: PriceListPolicyDto.policyTypeValueKey_)
            double policyTypeValue,
            @JsonKey(name: PriceListPolicyDto.enabledKey_) bool enabled,
            @JsonKey(name: PriceListPolicyDto.notesKey_) String? notes,
            @JsonKey(name: PriceListPolicyDto.itemsKey_)
            List<PriceListPolicyItemDto> items)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListPolicyDto():
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
            @JsonKey(name: PriceListPolicyDto.idKey_) String id,
            @JsonKey(name: PriceListPolicyDto.policyTypeKey_)
            PriceListPolicyPolicyType policyType,
            @JsonKey(name: PriceListPolicyDto.policyTypeValueKey_)
            double policyTypeValue,
            @JsonKey(name: PriceListPolicyDto.enabledKey_) bool enabled,
            @JsonKey(name: PriceListPolicyDto.notesKey_) String? notes,
            @JsonKey(name: PriceListPolicyDto.itemsKey_)
            List<PriceListPolicyItemDto> items)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PriceListPolicyDto() when $default != null:
        return $default(_that.id, _that.policyType, _that.policyTypeValue,
            _that.enabled, _that.notes, _that.items);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PriceListPolicyDto extends PriceListPolicyDto {
  const _PriceListPolicyDto(
      {@JsonKey(name: PriceListPolicyDto.idKey_) required this.id,
      @JsonKey(name: PriceListPolicyDto.policyTypeKey_)
      required this.policyType,
      @JsonKey(name: PriceListPolicyDto.policyTypeValueKey_)
      required this.policyTypeValue,
      @JsonKey(name: PriceListPolicyDto.enabledKey_) required this.enabled,
      @JsonKey(name: PriceListPolicyDto.notesKey_) this.notes,
      @JsonKey(name: PriceListPolicyDto.itemsKey_)
      required final List<PriceListPolicyItemDto> items})
      : _items = items,
        super._();
  factory _PriceListPolicyDto.fromJson(Map<String, dynamic> json) =>
      _$PriceListPolicyDtoFromJson(json);

  /// id
  @override
  @JsonKey(name: PriceListPolicyDto.idKey_)
  final String id;

  /// policyType
  @override
  @JsonKey(name: PriceListPolicyDto.policyTypeKey_)
  final PriceListPolicyPolicyType policyType;

  /// policyTypeValue
  @override
  @JsonKey(name: PriceListPolicyDto.policyTypeValueKey_)
  final double policyTypeValue;

  /// enabled
  @override
  @JsonKey(name: PriceListPolicyDto.enabledKey_)
  final bool enabled;

  /// notes
  @override
  @JsonKey(name: PriceListPolicyDto.notesKey_)
  final String? notes;

  /// items
  final List<PriceListPolicyItemDto> _items;

  /// items
  @override
  @JsonKey(name: PriceListPolicyDto.itemsKey_)
  List<PriceListPolicyItemDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// Create a copy of PriceListPolicyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PriceListPolicyDtoCopyWith<_PriceListPolicyDto> get copyWith =>
      __$PriceListPolicyDtoCopyWithImpl<_PriceListPolicyDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PriceListPolicyDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PriceListPolicyDto &&
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
    return 'PriceListPolicyDto(id: $id, policyType: $policyType, policyTypeValue: $policyTypeValue, enabled: $enabled, notes: $notes, items: $items)';
  }
}

/// @nodoc
abstract mixin class _$PriceListPolicyDtoCopyWith<$Res>
    implements $PriceListPolicyDtoCopyWith<$Res> {
  factory _$PriceListPolicyDtoCopyWith(
          _PriceListPolicyDto value, $Res Function(_PriceListPolicyDto) _then) =
      __$PriceListPolicyDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: PriceListPolicyDto.idKey_) String id,
      @JsonKey(name: PriceListPolicyDto.policyTypeKey_)
      PriceListPolicyPolicyType policyType,
      @JsonKey(name: PriceListPolicyDto.policyTypeValueKey_)
      double policyTypeValue,
      @JsonKey(name: PriceListPolicyDto.enabledKey_) bool enabled,
      @JsonKey(name: PriceListPolicyDto.notesKey_) String? notes,
      @JsonKey(name: PriceListPolicyDto.itemsKey_)
      List<PriceListPolicyItemDto> items});
}

/// @nodoc
class __$PriceListPolicyDtoCopyWithImpl<$Res>
    implements _$PriceListPolicyDtoCopyWith<$Res> {
  __$PriceListPolicyDtoCopyWithImpl(this._self, this._then);

  final _PriceListPolicyDto _self;
  final $Res Function(_PriceListPolicyDto) _then;

  /// Create a copy of PriceListPolicyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? policyType = null,
    Object? policyTypeValue = null,
    Object? enabled = null,
    Object? notes = freezed,
    Object? items = null,
  }) {
    return _then(_PriceListPolicyDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      policyType: null == policyType
          ? _self.policyType
          : policyType // ignore: cast_nullable_to_non_nullable
              as PriceListPolicyPolicyType,
      policyTypeValue: null == policyTypeValue
          ? _self.policyTypeValue
          : policyTypeValue // ignore: cast_nullable_to_non_nullable
              as double,
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PriceListPolicyItemDto>,
    ));
  }
}
