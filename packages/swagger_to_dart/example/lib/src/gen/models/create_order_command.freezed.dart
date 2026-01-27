// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateOrderCommand {
  /// salePointId
  @JsonKey(name: CreateOrderCommand.salePointIdKey_)
  String get salePointId;

  /// customerId
  @JsonKey(name: CreateOrderCommand.customerIdKey_)
  String get customerId;

  /// userId
  @JsonKey(name: CreateOrderCommand.userIdKey_)
  String get userId;

  /// lines
  @JsonKey(name: CreateOrderCommand.linesKey_)
  List<CreateOrderLine> get lines;

  /// isPaid
  @JsonKey(name: CreateOrderCommand.isPaidKey_)
  bool get isPaid;

  /// Create a copy of CreateOrderCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateOrderCommandCopyWith<CreateOrderCommand> get copyWith =>
      _$CreateOrderCommandCopyWithImpl<CreateOrderCommand>(
          this as CreateOrderCommand, _$identity);

  /// Serializes this CreateOrderCommand to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateOrderCommand &&
            (identical(other.salePointId, salePointId) ||
                other.salePointId == salePointId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other.lines, lines) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, salePointId, customerId, userId,
      const DeepCollectionEquality().hash(lines), isPaid);

  @override
  String toString() {
    return 'CreateOrderCommand(salePointId: $salePointId, customerId: $customerId, userId: $userId, lines: $lines, isPaid: $isPaid)';
  }
}

/// @nodoc
abstract mixin class $CreateOrderCommandCopyWith<$Res> {
  factory $CreateOrderCommandCopyWith(
          CreateOrderCommand value, $Res Function(CreateOrderCommand) _then) =
      _$CreateOrderCommandCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CreateOrderCommand.salePointIdKey_) String salePointId,
      @JsonKey(name: CreateOrderCommand.customerIdKey_) String customerId,
      @JsonKey(name: CreateOrderCommand.userIdKey_) String userId,
      @JsonKey(name: CreateOrderCommand.linesKey_) List<CreateOrderLine> lines,
      @JsonKey(name: CreateOrderCommand.isPaidKey_) bool isPaid});
}

/// @nodoc
class _$CreateOrderCommandCopyWithImpl<$Res>
    implements $CreateOrderCommandCopyWith<$Res> {
  _$CreateOrderCommandCopyWithImpl(this._self, this._then);

  final CreateOrderCommand _self;
  final $Res Function(CreateOrderCommand) _then;

  /// Create a copy of CreateOrderCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salePointId = null,
    Object? customerId = null,
    Object? userId = null,
    Object? lines = null,
    Object? isPaid = null,
  }) {
    return _then(_self.copyWith(
      salePointId: null == salePointId
          ? _self.salePointId
          : salePointId // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      lines: null == lines
          ? _self.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<CreateOrderLine>,
      isPaid: null == isPaid
          ? _self.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateOrderCommand].
extension CreateOrderCommandPatterns on CreateOrderCommand {
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
    TResult Function(_CreateOrderCommand value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateOrderCommand() when $default != null:
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
    TResult Function(_CreateOrderCommand value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderCommand():
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
    TResult? Function(_CreateOrderCommand value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderCommand() when $default != null:
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
            @JsonKey(name: CreateOrderCommand.salePointIdKey_)
            String salePointId,
            @JsonKey(name: CreateOrderCommand.customerIdKey_) String customerId,
            @JsonKey(name: CreateOrderCommand.userIdKey_) String userId,
            @JsonKey(name: CreateOrderCommand.linesKey_)
            List<CreateOrderLine> lines,
            @JsonKey(name: CreateOrderCommand.isPaidKey_) bool isPaid)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateOrderCommand() when $default != null:
        return $default(_that.salePointId, _that.customerId, _that.userId,
            _that.lines, _that.isPaid);
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
            @JsonKey(name: CreateOrderCommand.salePointIdKey_)
            String salePointId,
            @JsonKey(name: CreateOrderCommand.customerIdKey_) String customerId,
            @JsonKey(name: CreateOrderCommand.userIdKey_) String userId,
            @JsonKey(name: CreateOrderCommand.linesKey_)
            List<CreateOrderLine> lines,
            @JsonKey(name: CreateOrderCommand.isPaidKey_) bool isPaid)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderCommand():
        return $default(_that.salePointId, _that.customerId, _that.userId,
            _that.lines, _that.isPaid);
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
            @JsonKey(name: CreateOrderCommand.salePointIdKey_)
            String salePointId,
            @JsonKey(name: CreateOrderCommand.customerIdKey_) String customerId,
            @JsonKey(name: CreateOrderCommand.userIdKey_) String userId,
            @JsonKey(name: CreateOrderCommand.linesKey_)
            List<CreateOrderLine> lines,
            @JsonKey(name: CreateOrderCommand.isPaidKey_) bool isPaid)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderCommand() when $default != null:
        return $default(_that.salePointId, _that.customerId, _that.userId,
            _that.lines, _that.isPaid);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _CreateOrderCommand extends CreateOrderCommand {
  const _CreateOrderCommand(
      {@JsonKey(name: CreateOrderCommand.salePointIdKey_)
      required this.salePointId,
      @JsonKey(name: CreateOrderCommand.customerIdKey_)
      required this.customerId,
      @JsonKey(name: CreateOrderCommand.userIdKey_) required this.userId,
      @JsonKey(name: CreateOrderCommand.linesKey_)
      required final List<CreateOrderLine> lines,
      @JsonKey(name: CreateOrderCommand.isPaidKey_) required this.isPaid})
      : _lines = lines,
        super._();
  factory _CreateOrderCommand.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderCommandFromJson(json);

  /// salePointId
  @override
  @JsonKey(name: CreateOrderCommand.salePointIdKey_)
  final String salePointId;

  /// customerId
  @override
  @JsonKey(name: CreateOrderCommand.customerIdKey_)
  final String customerId;

  /// userId
  @override
  @JsonKey(name: CreateOrderCommand.userIdKey_)
  final String userId;

  /// lines
  final List<CreateOrderLine> _lines;

  /// lines
  @override
  @JsonKey(name: CreateOrderCommand.linesKey_)
  List<CreateOrderLine> get lines {
    if (_lines is EqualUnmodifiableListView) return _lines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lines);
  }

  /// isPaid
  @override
  @JsonKey(name: CreateOrderCommand.isPaidKey_)
  final bool isPaid;

  /// Create a copy of CreateOrderCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateOrderCommandCopyWith<_CreateOrderCommand> get copyWith =>
      __$CreateOrderCommandCopyWithImpl<_CreateOrderCommand>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateOrderCommandToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateOrderCommand &&
            (identical(other.salePointId, salePointId) ||
                other.salePointId == salePointId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._lines, _lines) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, salePointId, customerId, userId,
      const DeepCollectionEquality().hash(_lines), isPaid);

  @override
  String toString() {
    return 'CreateOrderCommand(salePointId: $salePointId, customerId: $customerId, userId: $userId, lines: $lines, isPaid: $isPaid)';
  }
}

/// @nodoc
abstract mixin class _$CreateOrderCommandCopyWith<$Res>
    implements $CreateOrderCommandCopyWith<$Res> {
  factory _$CreateOrderCommandCopyWith(
          _CreateOrderCommand value, $Res Function(_CreateOrderCommand) _then) =
      __$CreateOrderCommandCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CreateOrderCommand.salePointIdKey_) String salePointId,
      @JsonKey(name: CreateOrderCommand.customerIdKey_) String customerId,
      @JsonKey(name: CreateOrderCommand.userIdKey_) String userId,
      @JsonKey(name: CreateOrderCommand.linesKey_) List<CreateOrderLine> lines,
      @JsonKey(name: CreateOrderCommand.isPaidKey_) bool isPaid});
}

/// @nodoc
class __$CreateOrderCommandCopyWithImpl<$Res>
    implements _$CreateOrderCommandCopyWith<$Res> {
  __$CreateOrderCommandCopyWithImpl(this._self, this._then);

  final _CreateOrderCommand _self;
  final $Res Function(_CreateOrderCommand) _then;

  /// Create a copy of CreateOrderCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? salePointId = null,
    Object? customerId = null,
    Object? userId = null,
    Object? lines = null,
    Object? isPaid = null,
  }) {
    return _then(_CreateOrderCommand(
      salePointId: null == salePointId
          ? _self.salePointId
          : salePointId // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      lines: null == lines
          ? _self._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<CreateOrderLine>,
      isPaid: null == isPaid
          ? _self.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}
