// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_account_entry_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerAccountEntryDto {
  /// id
  @JsonKey(name: CustomerAccountEntryDto.idKey_)
  String get id;

  /// kind
  @JsonKey(name: CustomerAccountEntryDto.kindKey_)
  CustomerAccountEntryKind get kind;

  /// notes
  @JsonKey(name: CustomerAccountEntryDto.notesKey_)
  String? get notes;

  /// order
  @JsonKey(name: CustomerAccountEntryDto.orderKey_)
  CustomerAccountEntryOrderDetailsDto? get order;

  /// amount
  @JsonKey(name: CustomerAccountEntryDto.amountKey_)
  double get amount;

  /// balanceAfter
  @JsonKey(name: CustomerAccountEntryDto.balanceAfterKey_)
  double get balanceAfter;

  /// createdAt
  @JsonKey(name: CustomerAccountEntryDto.createdAtKey_)
  DateTime get createdAt;

  /// Create a copy of CustomerAccountEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomerAccountEntryDtoCopyWith<CustomerAccountEntryDto> get copyWith =>
      _$CustomerAccountEntryDtoCopyWithImpl<CustomerAccountEntryDto>(
          this as CustomerAccountEntryDto, _$identity);

  /// Serializes this CustomerAccountEntryDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomerAccountEntryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.balanceAfter, balanceAfter) ||
                other.balanceAfter == balanceAfter) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, kind, notes, order, amount, balanceAfter, createdAt);

  @override
  String toString() {
    return 'CustomerAccountEntryDto(id: $id, kind: $kind, notes: $notes, order: $order, amount: $amount, balanceAfter: $balanceAfter, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $CustomerAccountEntryDtoCopyWith<$Res> {
  factory $CustomerAccountEntryDtoCopyWith(CustomerAccountEntryDto value,
          $Res Function(CustomerAccountEntryDto) _then) =
      _$CustomerAccountEntryDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CustomerAccountEntryDto.idKey_) String id,
      @JsonKey(name: CustomerAccountEntryDto.kindKey_)
      CustomerAccountEntryKind kind,
      @JsonKey(name: CustomerAccountEntryDto.notesKey_) String? notes,
      @JsonKey(name: CustomerAccountEntryDto.orderKey_)
      CustomerAccountEntryOrderDetailsDto? order,
      @JsonKey(name: CustomerAccountEntryDto.amountKey_) double amount,
      @JsonKey(name: CustomerAccountEntryDto.balanceAfterKey_)
      double balanceAfter,
      @JsonKey(name: CustomerAccountEntryDto.createdAtKey_)
      DateTime createdAt});

  $CustomerAccountEntryOrderDetailsDtoCopyWith<$Res>? get order;
}

/// @nodoc
class _$CustomerAccountEntryDtoCopyWithImpl<$Res>
    implements $CustomerAccountEntryDtoCopyWith<$Res> {
  _$CustomerAccountEntryDtoCopyWithImpl(this._self, this._then);

  final CustomerAccountEntryDto _self;
  final $Res Function(CustomerAccountEntryDto) _then;

  /// Create a copy of CustomerAccountEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kind = null,
    Object? notes = freezed,
    Object? order = freezed,
    Object? amount = null,
    Object? balanceAfter = null,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as CustomerAccountEntryKind,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as CustomerAccountEntryOrderDetailsDto?,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      balanceAfter: null == balanceAfter
          ? _self.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of CustomerAccountEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerAccountEntryOrderDetailsDtoCopyWith<$Res>? get order {
    if (_self.order == null) {
      return null;
    }

    return $CustomerAccountEntryOrderDetailsDtoCopyWith<$Res>(_self.order!,
        (value) {
      return _then(_self.copyWith(order: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CustomerAccountEntryDto].
extension CustomerAccountEntryDtoPatterns on CustomerAccountEntryDto {
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
    TResult Function(_CustomerAccountEntryDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomerAccountEntryDto() when $default != null:
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
    TResult Function(_CustomerAccountEntryDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerAccountEntryDto():
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
    TResult? Function(_CustomerAccountEntryDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerAccountEntryDto() when $default != null:
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
            @JsonKey(name: CustomerAccountEntryDto.idKey_) String id,
            @JsonKey(name: CustomerAccountEntryDto.kindKey_)
            CustomerAccountEntryKind kind,
            @JsonKey(name: CustomerAccountEntryDto.notesKey_) String? notes,
            @JsonKey(name: CustomerAccountEntryDto.orderKey_)
            CustomerAccountEntryOrderDetailsDto? order,
            @JsonKey(name: CustomerAccountEntryDto.amountKey_) double amount,
            @JsonKey(name: CustomerAccountEntryDto.balanceAfterKey_)
            double balanceAfter,
            @JsonKey(name: CustomerAccountEntryDto.createdAtKey_)
            DateTime createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomerAccountEntryDto() when $default != null:
        return $default(_that.id, _that.kind, _that.notes, _that.order,
            _that.amount, _that.balanceAfter, _that.createdAt);
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
            @JsonKey(name: CustomerAccountEntryDto.idKey_) String id,
            @JsonKey(name: CustomerAccountEntryDto.kindKey_)
            CustomerAccountEntryKind kind,
            @JsonKey(name: CustomerAccountEntryDto.notesKey_) String? notes,
            @JsonKey(name: CustomerAccountEntryDto.orderKey_)
            CustomerAccountEntryOrderDetailsDto? order,
            @JsonKey(name: CustomerAccountEntryDto.amountKey_) double amount,
            @JsonKey(name: CustomerAccountEntryDto.balanceAfterKey_)
            double balanceAfter,
            @JsonKey(name: CustomerAccountEntryDto.createdAtKey_)
            DateTime createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerAccountEntryDto():
        return $default(_that.id, _that.kind, _that.notes, _that.order,
            _that.amount, _that.balanceAfter, _that.createdAt);
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
            @JsonKey(name: CustomerAccountEntryDto.idKey_) String id,
            @JsonKey(name: CustomerAccountEntryDto.kindKey_)
            CustomerAccountEntryKind kind,
            @JsonKey(name: CustomerAccountEntryDto.notesKey_) String? notes,
            @JsonKey(name: CustomerAccountEntryDto.orderKey_)
            CustomerAccountEntryOrderDetailsDto? order,
            @JsonKey(name: CustomerAccountEntryDto.amountKey_) double amount,
            @JsonKey(name: CustomerAccountEntryDto.balanceAfterKey_)
            double balanceAfter,
            @JsonKey(name: CustomerAccountEntryDto.createdAtKey_)
            DateTime createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerAccountEntryDto() when $default != null:
        return $default(_that.id, _that.kind, _that.notes, _that.order,
            _that.amount, _that.balanceAfter, _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _CustomerAccountEntryDto extends CustomerAccountEntryDto {
  const _CustomerAccountEntryDto(
      {@JsonKey(name: CustomerAccountEntryDto.idKey_) required this.id,
      @JsonKey(name: CustomerAccountEntryDto.kindKey_) required this.kind,
      @JsonKey(name: CustomerAccountEntryDto.notesKey_) this.notes,
      @JsonKey(name: CustomerAccountEntryDto.orderKey_) this.order,
      @JsonKey(name: CustomerAccountEntryDto.amountKey_) required this.amount,
      @JsonKey(name: CustomerAccountEntryDto.balanceAfterKey_)
      required this.balanceAfter,
      @JsonKey(name: CustomerAccountEntryDto.createdAtKey_)
      required this.createdAt})
      : super._();
  factory _CustomerAccountEntryDto.fromJson(Map<String, dynamic> json) =>
      _$CustomerAccountEntryDtoFromJson(json);

  /// id
  @override
  @JsonKey(name: CustomerAccountEntryDto.idKey_)
  final String id;

  /// kind
  @override
  @JsonKey(name: CustomerAccountEntryDto.kindKey_)
  final CustomerAccountEntryKind kind;

  /// notes
  @override
  @JsonKey(name: CustomerAccountEntryDto.notesKey_)
  final String? notes;

  /// order
  @override
  @JsonKey(name: CustomerAccountEntryDto.orderKey_)
  final CustomerAccountEntryOrderDetailsDto? order;

  /// amount
  @override
  @JsonKey(name: CustomerAccountEntryDto.amountKey_)
  final double amount;

  /// balanceAfter
  @override
  @JsonKey(name: CustomerAccountEntryDto.balanceAfterKey_)
  final double balanceAfter;

  /// createdAt
  @override
  @JsonKey(name: CustomerAccountEntryDto.createdAtKey_)
  final DateTime createdAt;

  /// Create a copy of CustomerAccountEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomerAccountEntryDtoCopyWith<_CustomerAccountEntryDto> get copyWith =>
      __$CustomerAccountEntryDtoCopyWithImpl<_CustomerAccountEntryDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomerAccountEntryDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerAccountEntryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.balanceAfter, balanceAfter) ||
                other.balanceAfter == balanceAfter) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, kind, notes, order, amount, balanceAfter, createdAt);

  @override
  String toString() {
    return 'CustomerAccountEntryDto(id: $id, kind: $kind, notes: $notes, order: $order, amount: $amount, balanceAfter: $balanceAfter, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$CustomerAccountEntryDtoCopyWith<$Res>
    implements $CustomerAccountEntryDtoCopyWith<$Res> {
  factory _$CustomerAccountEntryDtoCopyWith(_CustomerAccountEntryDto value,
          $Res Function(_CustomerAccountEntryDto) _then) =
      __$CustomerAccountEntryDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CustomerAccountEntryDto.idKey_) String id,
      @JsonKey(name: CustomerAccountEntryDto.kindKey_)
      CustomerAccountEntryKind kind,
      @JsonKey(name: CustomerAccountEntryDto.notesKey_) String? notes,
      @JsonKey(name: CustomerAccountEntryDto.orderKey_)
      CustomerAccountEntryOrderDetailsDto? order,
      @JsonKey(name: CustomerAccountEntryDto.amountKey_) double amount,
      @JsonKey(name: CustomerAccountEntryDto.balanceAfterKey_)
      double balanceAfter,
      @JsonKey(name: CustomerAccountEntryDto.createdAtKey_)
      DateTime createdAt});

  @override
  $CustomerAccountEntryOrderDetailsDtoCopyWith<$Res>? get order;
}

/// @nodoc
class __$CustomerAccountEntryDtoCopyWithImpl<$Res>
    implements _$CustomerAccountEntryDtoCopyWith<$Res> {
  __$CustomerAccountEntryDtoCopyWithImpl(this._self, this._then);

  final _CustomerAccountEntryDto _self;
  final $Res Function(_CustomerAccountEntryDto) _then;

  /// Create a copy of CustomerAccountEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? kind = null,
    Object? notes = freezed,
    Object? order = freezed,
    Object? amount = null,
    Object? balanceAfter = null,
    Object? createdAt = null,
  }) {
    return _then(_CustomerAccountEntryDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as CustomerAccountEntryKind,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as CustomerAccountEntryOrderDetailsDto?,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      balanceAfter: null == balanceAfter
          ? _self.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of CustomerAccountEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerAccountEntryOrderDetailsDtoCopyWith<$Res>? get order {
    if (_self.order == null) {
      return null;
    }

    return $CustomerAccountEntryOrderDetailsDtoCopyWith<$Res>(_self.order!,
        (value) {
      return _then(_self.copyWith(order: value));
    });
  }
}
