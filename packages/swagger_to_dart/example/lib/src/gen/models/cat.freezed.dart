// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Cat {
  /// name
  @JsonKey(name: Cat.nameKey_)
  String get name;

  /// type
  @JsonKey(name: Cat.typeKey_)
  String get type;

  /// meowCuteness
  @JsonKey(name: Cat.meowCutenessKey_)
  int get meowCuteness;

  /// Create a copy of Cat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CatCopyWith<Cat> get copyWith =>
      _$CatCopyWithImpl<Cat>(this as Cat, _$identity);

  /// Serializes this Cat to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Cat &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.meowCuteness, meowCuteness) ||
                other.meowCuteness == meowCuteness));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, type, meowCuteness);

  @override
  String toString() {
    return 'Cat(name: $name, type: $type, meowCuteness: $meowCuteness)';
  }
}

/// @nodoc
abstract mixin class $CatCopyWith<$Res> {
  factory $CatCopyWith(Cat value, $Res Function(Cat) _then) = _$CatCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: Cat.nameKey_) String name,
      @JsonKey(name: Cat.typeKey_) String type,
      @JsonKey(name: Cat.meowCutenessKey_) int meowCuteness});
}

/// @nodoc
class _$CatCopyWithImpl<$Res> implements $CatCopyWith<$Res> {
  _$CatCopyWithImpl(this._self, this._then);

  final Cat _self;
  final $Res Function(Cat) _then;

  /// Create a copy of Cat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? meowCuteness = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      meowCuteness: null == meowCuteness
          ? _self.meowCuteness
          : meowCuteness // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [Cat].
extension CatPatterns on Cat {
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
    TResult Function(_Cat value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Cat() when $default != null:
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
    TResult Function(_Cat value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Cat():
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
    TResult? Function(_Cat value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Cat() when $default != null:
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
            @JsonKey(name: Cat.nameKey_) String name,
            @JsonKey(name: Cat.typeKey_) String type,
            @JsonKey(name: Cat.meowCutenessKey_) int meowCuteness)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Cat() when $default != null:
        return $default(_that.name, _that.type, _that.meowCuteness);
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
            @JsonKey(name: Cat.nameKey_) String name,
            @JsonKey(name: Cat.typeKey_) String type,
            @JsonKey(name: Cat.meowCutenessKey_) int meowCuteness)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Cat():
        return $default(_that.name, _that.type, _that.meowCuteness);
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
            @JsonKey(name: Cat.nameKey_) String name,
            @JsonKey(name: Cat.typeKey_) String type,
            @JsonKey(name: Cat.meowCutenessKey_) int meowCuteness)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Cat() when $default != null:
        return $default(_that.name, _that.type, _that.meowCuteness);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _Cat extends Cat {
  const _Cat(
      {@JsonKey(name: Cat.nameKey_) required this.name,
      @JsonKey(name: Cat.typeKey_) this.type = 'cat',
      @JsonKey(name: Cat.meowCutenessKey_) required this.meowCuteness})
      : super._();
  factory _Cat.fromJson(Map<String, dynamic> json) => _$CatFromJson(json);

  /// name
  @override
  @JsonKey(name: Cat.nameKey_)
  final String name;

  /// type
  @override
  @JsonKey(name: Cat.typeKey_)
  final String type;

  /// meowCuteness
  @override
  @JsonKey(name: Cat.meowCutenessKey_)
  final int meowCuteness;

  /// Create a copy of Cat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CatCopyWith<_Cat> get copyWith =>
      __$CatCopyWithImpl<_Cat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CatToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Cat &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.meowCuteness, meowCuteness) ||
                other.meowCuteness == meowCuteness));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, type, meowCuteness);

  @override
  String toString() {
    return 'Cat(name: $name, type: $type, meowCuteness: $meowCuteness)';
  }
}

/// @nodoc
abstract mixin class _$CatCopyWith<$Res> implements $CatCopyWith<$Res> {
  factory _$CatCopyWith(_Cat value, $Res Function(_Cat) _then) =
      __$CatCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: Cat.nameKey_) String name,
      @JsonKey(name: Cat.typeKey_) String type,
      @JsonKey(name: Cat.meowCutenessKey_) int meowCuteness});
}

/// @nodoc
class __$CatCopyWithImpl<$Res> implements _$CatCopyWith<$Res> {
  __$CatCopyWithImpl(this._self, this._then);

  final _Cat _self;
  final $Res Function(_Cat) _then;

  /// Create a copy of Cat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? meowCuteness = null,
  }) {
    return _then(_Cat(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      meowCuteness: null == meowCuteness
          ? _self.meowCuteness
          : meowCuteness // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
