// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_customer_account_entry_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateCustomerAccountEntryDto {
  /// kind
  @JsonKey(name: CreateCustomerAccountEntryDto.kindKey_)
  CustomerAccountEntryKind get kind;

  /// amount
  @JsonKey(name: CreateCustomerAccountEntryDto.amountKey_)
  double get amount;

  /// notes
  @JsonKey(name: CreateCustomerAccountEntryDto.notesKey_)
  String? get notes;

  /// Create a copy of CreateCustomerAccountEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateCustomerAccountEntryDtoCopyWith<CreateCustomerAccountEntryDto>
      get copyWith => _$CreateCustomerAccountEntryDtoCopyWithImpl<
              CreateCustomerAccountEntryDto>(
          this as CreateCustomerAccountEntryDto, _$identity);

  /// Serializes this CreateCustomerAccountEntryDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateCustomerAccountEntryDto &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, kind, amount, notes);

  @override
  String toString() {
    return 'CreateCustomerAccountEntryDto(kind: $kind, amount: $amount, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $CreateCustomerAccountEntryDtoCopyWith<$Res> {
  factory $CreateCustomerAccountEntryDtoCopyWith(
          CreateCustomerAccountEntryDto value,
          $Res Function(CreateCustomerAccountEntryDto) _then) =
      _$CreateCustomerAccountEntryDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CreateCustomerAccountEntryDto.kindKey_)
      CustomerAccountEntryKind kind,
      @JsonKey(name: CreateCustomerAccountEntryDto.amountKey_) double amount,
      @JsonKey(name: CreateCustomerAccountEntryDto.notesKey_) String? notes});
}

/// @nodoc
class _$CreateCustomerAccountEntryDtoCopyWithImpl<$Res>
    implements $CreateCustomerAccountEntryDtoCopyWith<$Res> {
  _$CreateCustomerAccountEntryDtoCopyWithImpl(this._self, this._then);

  final CreateCustomerAccountEntryDto _self;
  final $Res Function(CreateCustomerAccountEntryDto) _then;

  /// Create a copy of CreateCustomerAccountEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? amount = null,
    Object? notes = freezed,
  }) {
    return _then(_self.copyWith(
      kind: null == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as CustomerAccountEntryKind,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateCustomerAccountEntryDto].
extension CreateCustomerAccountEntryDtoPatterns
    on CreateCustomerAccountEntryDto {
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
    TResult Function(_CreateCustomerAccountEntryDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateCustomerAccountEntryDto() when $default != null:
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
    TResult Function(_CreateCustomerAccountEntryDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCustomerAccountEntryDto():
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
    TResult? Function(_CreateCustomerAccountEntryDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCustomerAccountEntryDto() when $default != null:
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
            @JsonKey(name: CreateCustomerAccountEntryDto.kindKey_)
            CustomerAccountEntryKind kind,
            @JsonKey(name: CreateCustomerAccountEntryDto.amountKey_)
            double amount,
            @JsonKey(name: CreateCustomerAccountEntryDto.notesKey_)
            String? notes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateCustomerAccountEntryDto() when $default != null:
        return $default(_that.kind, _that.amount, _that.notes);
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
            @JsonKey(name: CreateCustomerAccountEntryDto.kindKey_)
            CustomerAccountEntryKind kind,
            @JsonKey(name: CreateCustomerAccountEntryDto.amountKey_)
            double amount,
            @JsonKey(name: CreateCustomerAccountEntryDto.notesKey_)
            String? notes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCustomerAccountEntryDto():
        return $default(_that.kind, _that.amount, _that.notes);
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
            @JsonKey(name: CreateCustomerAccountEntryDto.kindKey_)
            CustomerAccountEntryKind kind,
            @JsonKey(name: CreateCustomerAccountEntryDto.amountKey_)
            double amount,
            @JsonKey(name: CreateCustomerAccountEntryDto.notesKey_)
            String? notes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCustomerAccountEntryDto() when $default != null:
        return $default(_that.kind, _that.amount, _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _CreateCustomerAccountEntryDto extends CreateCustomerAccountEntryDto {
  const _CreateCustomerAccountEntryDto(
      {@JsonKey(name: CreateCustomerAccountEntryDto.kindKey_)
      required this.kind,
      @JsonKey(name: CreateCustomerAccountEntryDto.amountKey_)
      required this.amount,
      @JsonKey(name: CreateCustomerAccountEntryDto.notesKey_) this.notes})
      : super._();
  factory _CreateCustomerAccountEntryDto.fromJson(Map<String, dynamic> json) =>
      _$CreateCustomerAccountEntryDtoFromJson(json);

  /// kind
  @override
  @JsonKey(name: CreateCustomerAccountEntryDto.kindKey_)
  final CustomerAccountEntryKind kind;

  /// amount
  @override
  @JsonKey(name: CreateCustomerAccountEntryDto.amountKey_)
  final double amount;

  /// notes
  @override
  @JsonKey(name: CreateCustomerAccountEntryDto.notesKey_)
  final String? notes;

  /// Create a copy of CreateCustomerAccountEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateCustomerAccountEntryDtoCopyWith<_CreateCustomerAccountEntryDto>
      get copyWith => __$CreateCustomerAccountEntryDtoCopyWithImpl<
          _CreateCustomerAccountEntryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateCustomerAccountEntryDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateCustomerAccountEntryDto &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, kind, amount, notes);

  @override
  String toString() {
    return 'CreateCustomerAccountEntryDto(kind: $kind, amount: $amount, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$CreateCustomerAccountEntryDtoCopyWith<$Res>
    implements $CreateCustomerAccountEntryDtoCopyWith<$Res> {
  factory _$CreateCustomerAccountEntryDtoCopyWith(
          _CreateCustomerAccountEntryDto value,
          $Res Function(_CreateCustomerAccountEntryDto) _then) =
      __$CreateCustomerAccountEntryDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CreateCustomerAccountEntryDto.kindKey_)
      CustomerAccountEntryKind kind,
      @JsonKey(name: CreateCustomerAccountEntryDto.amountKey_) double amount,
      @JsonKey(name: CreateCustomerAccountEntryDto.notesKey_) String? notes});
}

/// @nodoc
class __$CreateCustomerAccountEntryDtoCopyWithImpl<$Res>
    implements _$CreateCustomerAccountEntryDtoCopyWith<$Res> {
  __$CreateCustomerAccountEntryDtoCopyWithImpl(this._self, this._then);

  final _CreateCustomerAccountEntryDto _self;
  final $Res Function(_CreateCustomerAccountEntryDto) _then;

  /// Create a copy of CreateCustomerAccountEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? kind = null,
    Object? amount = null,
    Object? notes = freezed,
  }) {
    return _then(_CreateCustomerAccountEntryDto(
      kind: null == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as CustomerAccountEntryKind,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}
