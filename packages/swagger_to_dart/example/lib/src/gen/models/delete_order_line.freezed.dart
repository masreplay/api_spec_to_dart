// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_order_line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteOrderLine {
  /// id
  @JsonKey(name: DeleteOrderLine.idKey_)
  String get id;

  /// type
  @JsonKey(name: DeleteOrderLine.typeKey_)
  String get type;

  /// Create a copy of DeleteOrderLine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeleteOrderLineCopyWith<DeleteOrderLine> get copyWith =>
      _$DeleteOrderLineCopyWithImpl<DeleteOrderLine>(
          this as DeleteOrderLine, _$identity);

  /// Serializes this DeleteOrderLine to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteOrderLine &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type);

  @override
  String toString() {
    return 'DeleteOrderLine(id: $id, type: $type)';
  }
}

/// @nodoc
abstract mixin class $DeleteOrderLineCopyWith<$Res> {
  factory $DeleteOrderLineCopyWith(
          DeleteOrderLine value, $Res Function(DeleteOrderLine) _then) =
      _$DeleteOrderLineCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: DeleteOrderLine.idKey_) String id,
      @JsonKey(name: DeleteOrderLine.typeKey_) String type});
}

/// @nodoc
class _$DeleteOrderLineCopyWithImpl<$Res>
    implements $DeleteOrderLineCopyWith<$Res> {
  _$DeleteOrderLineCopyWithImpl(this._self, this._then);

  final DeleteOrderLine _self;
  final $Res Function(DeleteOrderLine) _then;

  /// Create a copy of DeleteOrderLine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [DeleteOrderLine].
extension DeleteOrderLinePatterns on DeleteOrderLine {
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
    TResult Function(_DeleteOrderLine value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DeleteOrderLine() when $default != null:
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
    TResult Function(_DeleteOrderLine value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeleteOrderLine():
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
    TResult? Function(_DeleteOrderLine value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeleteOrderLine() when $default != null:
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
    TResult Function(@JsonKey(name: DeleteOrderLine.idKey_) String id,
            @JsonKey(name: DeleteOrderLine.typeKey_) String type)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DeleteOrderLine() when $default != null:
        return $default(_that.id, _that.type);
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
    TResult Function(@JsonKey(name: DeleteOrderLine.idKey_) String id,
            @JsonKey(name: DeleteOrderLine.typeKey_) String type)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeleteOrderLine():
        return $default(_that.id, _that.type);
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
    TResult? Function(@JsonKey(name: DeleteOrderLine.idKey_) String id,
            @JsonKey(name: DeleteOrderLine.typeKey_) String type)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DeleteOrderLine() when $default != null:
        return $default(_that.id, _that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _DeleteOrderLine extends DeleteOrderLine {
  const _DeleteOrderLine(
      {@JsonKey(name: DeleteOrderLine.idKey_) required this.id,
      @JsonKey(name: DeleteOrderLine.typeKey_) this.type = 'delete'})
      : super._();
  factory _DeleteOrderLine.fromJson(Map<String, dynamic> json) =>
      _$DeleteOrderLineFromJson(json);

  /// id
  @override
  @JsonKey(name: DeleteOrderLine.idKey_)
  final String id;

  /// type
  @override
  @JsonKey(name: DeleteOrderLine.typeKey_)
  final String type;

  /// Create a copy of DeleteOrderLine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeleteOrderLineCopyWith<_DeleteOrderLine> get copyWith =>
      __$DeleteOrderLineCopyWithImpl<_DeleteOrderLine>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DeleteOrderLineToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteOrderLine &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type);

  @override
  String toString() {
    return 'DeleteOrderLine(id: $id, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$DeleteOrderLineCopyWith<$Res>
    implements $DeleteOrderLineCopyWith<$Res> {
  factory _$DeleteOrderLineCopyWith(
          _DeleteOrderLine value, $Res Function(_DeleteOrderLine) _then) =
      __$DeleteOrderLineCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: DeleteOrderLine.idKey_) String id,
      @JsonKey(name: DeleteOrderLine.typeKey_) String type});
}

/// @nodoc
class __$DeleteOrderLineCopyWithImpl<$Res>
    implements _$DeleteOrderLineCopyWith<$Res> {
  __$DeleteOrderLineCopyWithImpl(this._self, this._then);

  final _DeleteOrderLine _self;
  final $Res Function(_DeleteOrderLine) _then;

  /// Create a copy of DeleteOrderLine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_DeleteOrderLine(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
