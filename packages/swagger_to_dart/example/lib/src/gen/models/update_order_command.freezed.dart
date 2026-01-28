// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_order_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateOrderCommand {
  /// customerId
  @JsonKey(name: UpdateOrderCommand.customerIdKey_)
  String? get customerId;

  /// lines
  @JsonKey(name: UpdateOrderCommand.linesKey_)
  List<OrderLineChange>? get lines;

  /// Create a copy of UpdateOrderCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateOrderCommandCopyWith<UpdateOrderCommand> get copyWith =>
      _$UpdateOrderCommandCopyWithImpl<UpdateOrderCommand>(
          this as UpdateOrderCommand, _$identity);

  /// Serializes this UpdateOrderCommand to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateOrderCommand &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            const DeepCollectionEquality().equals(other.lines, lines));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, customerId, const DeepCollectionEquality().hash(lines));

  @override
  String toString() {
    return 'UpdateOrderCommand(customerId: $customerId, lines: $lines)';
  }
}

/// @nodoc
abstract mixin class $UpdateOrderCommandCopyWith<$Res> {
  factory $UpdateOrderCommandCopyWith(
          UpdateOrderCommand value, $Res Function(UpdateOrderCommand) _then) =
      _$UpdateOrderCommandCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: UpdateOrderCommand.customerIdKey_) String? customerId,
      @JsonKey(name: UpdateOrderCommand.linesKey_)
      List<OrderLineChange>? lines});
}

/// @nodoc
class _$UpdateOrderCommandCopyWithImpl<$Res>
    implements $UpdateOrderCommandCopyWith<$Res> {
  _$UpdateOrderCommandCopyWithImpl(this._self, this._then);

  final UpdateOrderCommand _self;
  final $Res Function(UpdateOrderCommand) _then;

  /// Create a copy of UpdateOrderCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = freezed,
    Object? lines = freezed,
  }) {
    return _then(_self.copyWith(
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: freezed == lines
          ? _self.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<OrderLineChange>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateOrderCommand].
extension UpdateOrderCommandPatterns on UpdateOrderCommand {
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
    TResult Function(_UpdateOrderCommand value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateOrderCommand() when $default != null:
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
    TResult Function(_UpdateOrderCommand value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateOrderCommand():
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
    TResult? Function(_UpdateOrderCommand value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateOrderCommand() when $default != null:
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
            @JsonKey(name: UpdateOrderCommand.customerIdKey_)
            String? customerId,
            @JsonKey(name: UpdateOrderCommand.linesKey_)
            List<OrderLineChange>? lines)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateOrderCommand() when $default != null:
        return $default(_that.customerId, _that.lines);
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
            @JsonKey(name: UpdateOrderCommand.customerIdKey_)
            String? customerId,
            @JsonKey(name: UpdateOrderCommand.linesKey_)
            List<OrderLineChange>? lines)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateOrderCommand():
        return $default(_that.customerId, _that.lines);
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
            @JsonKey(name: UpdateOrderCommand.customerIdKey_)
            String? customerId,
            @JsonKey(name: UpdateOrderCommand.linesKey_)
            List<OrderLineChange>? lines)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateOrderCommand() when $default != null:
        return $default(_that.customerId, _that.lines);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _UpdateOrderCommand extends UpdateOrderCommand {
  const _UpdateOrderCommand(
      {@JsonKey(name: UpdateOrderCommand.customerIdKey_) this.customerId,
      @JsonKey(name: UpdateOrderCommand.linesKey_)
      final List<OrderLineChange>? lines})
      : _lines = lines,
        super._();
  factory _UpdateOrderCommand.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrderCommandFromJson(json);

  /// customerId
  @override
  @JsonKey(name: UpdateOrderCommand.customerIdKey_)
  final String? customerId;

  /// lines
  final List<OrderLineChange>? _lines;

  /// lines
  @override
  @JsonKey(name: UpdateOrderCommand.linesKey_)
  List<OrderLineChange>? get lines {
    final value = _lines;
    if (value == null) return null;
    if (_lines is EqualUnmodifiableListView) return _lines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of UpdateOrderCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateOrderCommandCopyWith<_UpdateOrderCommand> get copyWith =>
      __$UpdateOrderCommandCopyWithImpl<_UpdateOrderCommand>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateOrderCommandToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateOrderCommand &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            const DeepCollectionEquality().equals(other._lines, _lines));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, customerId, const DeepCollectionEquality().hash(_lines));

  @override
  String toString() {
    return 'UpdateOrderCommand(customerId: $customerId, lines: $lines)';
  }
}

/// @nodoc
abstract mixin class _$UpdateOrderCommandCopyWith<$Res>
    implements $UpdateOrderCommandCopyWith<$Res> {
  factory _$UpdateOrderCommandCopyWith(
          _UpdateOrderCommand value, $Res Function(_UpdateOrderCommand) _then) =
      __$UpdateOrderCommandCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UpdateOrderCommand.customerIdKey_) String? customerId,
      @JsonKey(name: UpdateOrderCommand.linesKey_)
      List<OrderLineChange>? lines});
}

/// @nodoc
class __$UpdateOrderCommandCopyWithImpl<$Res>
    implements _$UpdateOrderCommandCopyWith<$Res> {
  __$UpdateOrderCommandCopyWithImpl(this._self, this._then);

  final _UpdateOrderCommand _self;
  final $Res Function(_UpdateOrderCommand) _then;

  /// Create a copy of UpdateOrderCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customerId = freezed,
    Object? lines = freezed,
  }) {
    return _then(_UpdateOrderCommand(
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      lines: freezed == lines
          ? _self._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<OrderLineChange>?,
    ));
  }
}
