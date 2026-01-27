// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_point_ref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SalePointRef {
  /// id
  @JsonKey(name: SalePointRef.idKey_)
  String get id;

  /// name
  @JsonKey(name: SalePointRef.nameKey_)
  String get name;

  /// Create a copy of SalePointRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SalePointRefCopyWith<SalePointRef> get copyWith =>
      _$SalePointRefCopyWithImpl<SalePointRef>(
          this as SalePointRef, _$identity);

  /// Serializes this SalePointRef to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SalePointRef &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'SalePointRef(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $SalePointRefCopyWith<$Res> {
  factory $SalePointRefCopyWith(
          SalePointRef value, $Res Function(SalePointRef) _then) =
      _$SalePointRefCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: SalePointRef.idKey_) String id,
      @JsonKey(name: SalePointRef.nameKey_) String name});
}

/// @nodoc
class _$SalePointRefCopyWithImpl<$Res> implements $SalePointRefCopyWith<$Res> {
  _$SalePointRefCopyWithImpl(this._self, this._then);

  final SalePointRef _self;
  final $Res Function(SalePointRef) _then;

  /// Create a copy of SalePointRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ));
  }
}

/// Adds pattern-matching-related methods to [SalePointRef].
extension SalePointRefPatterns on SalePointRef {
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
    TResult Function(_SalePointRef value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SalePointRef() when $default != null:
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
    TResult Function(_SalePointRef value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalePointRef():
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
    TResult? Function(_SalePointRef value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalePointRef() when $default != null:
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
    TResult Function(@JsonKey(name: SalePointRef.idKey_) String id,
            @JsonKey(name: SalePointRef.nameKey_) String name)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SalePointRef() when $default != null:
        return $default(_that.id, _that.name);
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
    TResult Function(@JsonKey(name: SalePointRef.idKey_) String id,
            @JsonKey(name: SalePointRef.nameKey_) String name)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalePointRef():
        return $default(_that.id, _that.name);
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
    TResult? Function(@JsonKey(name: SalePointRef.idKey_) String id,
            @JsonKey(name: SalePointRef.nameKey_) String name)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalePointRef() when $default != null:
        return $default(_that.id, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _SalePointRef extends SalePointRef {
  const _SalePointRef(
      {@JsonKey(name: SalePointRef.idKey_) required this.id,
      @JsonKey(name: SalePointRef.nameKey_) required this.name})
      : super._();
  factory _SalePointRef.fromJson(Map<String, dynamic> json) =>
      _$SalePointRefFromJson(json);

  /// id
  @override
  @JsonKey(name: SalePointRef.idKey_)
  final String id;

  /// name
  @override
  @JsonKey(name: SalePointRef.nameKey_)
  final String name;

  /// Create a copy of SalePointRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SalePointRefCopyWith<_SalePointRef> get copyWith =>
      __$SalePointRefCopyWithImpl<_SalePointRef>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SalePointRefToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SalePointRef &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'SalePointRef(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$SalePointRefCopyWith<$Res>
    implements $SalePointRefCopyWith<$Res> {
  factory _$SalePointRefCopyWith(
          _SalePointRef value, $Res Function(_SalePointRef) _then) =
      __$SalePointRefCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: SalePointRef.idKey_) String id,
      @JsonKey(name: SalePointRef.nameKey_) String name});
}

/// @nodoc
class __$SalePointRefCopyWithImpl<$Res>
    implements _$SalePointRefCopyWith<$Res> {
  __$SalePointRefCopyWithImpl(this._self, this._then);

  final _SalePointRef _self;
  final $Res Function(_SalePointRef) _then;

  /// Create a copy of SalePointRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_SalePointRef(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
