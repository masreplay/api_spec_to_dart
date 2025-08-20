// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'animal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Animal _$AnimalFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'Dog':
      return AnimalDog.fromJson(json);
    case 'Cat':
      return AnimalCat.fromJson(json);
    case 'Parrot':
      return AnimalParrot.fromJson(json);

    default:
      return AnimalFallback.fromJson(json);
  }
}

/// @nodoc
mixin _$Animal {
  Object? get value;

  /// Serializes this Animal to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Animal &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'Animal(value: $value)';
  }
}

/// @nodoc
class $AnimalCopyWith<$Res> {
  $AnimalCopyWith(Animal _, $Res Function(Animal) __);
}

/// Adds pattern-matching-related methods to [Animal].
extension AnimalPatterns on Animal {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AnimalDog value)? dog,
    TResult Function(AnimalCat value)? cat,
    TResult Function(AnimalParrot value)? parrot,
    TResult Function(AnimalFallback value)? fallback,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AnimalDog() when dog != null:
        return dog(_that);
      case AnimalCat() when cat != null:
        return cat(_that);
      case AnimalParrot() when parrot != null:
        return parrot(_that);
      case AnimalFallback() when fallback != null:
        return fallback(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(AnimalDog value) dog,
    required TResult Function(AnimalCat value) cat,
    required TResult Function(AnimalParrot value) parrot,
    required TResult Function(AnimalFallback value) fallback,
  }) {
    final _that = this;
    switch (_that) {
      case AnimalDog():
        return dog(_that);
      case AnimalCat():
        return cat(_that);
      case AnimalParrot():
        return parrot(_that);
      case AnimalFallback():
        return fallback(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AnimalDog value)? dog,
    TResult? Function(AnimalCat value)? cat,
    TResult? Function(AnimalParrot value)? parrot,
    TResult? Function(AnimalFallback value)? fallback,
  }) {
    final _that = this;
    switch (_that) {
      case AnimalDog() when dog != null:
        return dog(_that);
      case AnimalCat() when cat != null:
        return cat(_that);
      case AnimalParrot() when parrot != null:
        return parrot(_that);
      case AnimalFallback() when fallback != null:
        return fallback(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dog value)? dog,
    TResult Function(Cat value)? cat,
    TResult Function(Parrot value)? parrot,
    TResult Function(Map<String, dynamic>? value)? fallback,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AnimalDog() when dog != null:
        return dog(_that.value);
      case AnimalCat() when cat != null:
        return cat(_that.value);
      case AnimalParrot() when parrot != null:
        return parrot(_that.value);
      case AnimalFallback() when fallback != null:
        return fallback(_that.value);
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
  TResult when<TResult extends Object?>({
    required TResult Function(Dog value) dog,
    required TResult Function(Cat value) cat,
    required TResult Function(Parrot value) parrot,
    required TResult Function(Map<String, dynamic>? value) fallback,
  }) {
    final _that = this;
    switch (_that) {
      case AnimalDog():
        return dog(_that.value);
      case AnimalCat():
        return cat(_that.value);
      case AnimalParrot():
        return parrot(_that.value);
      case AnimalFallback():
        return fallback(_that.value);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dog value)? dog,
    TResult? Function(Cat value)? cat,
    TResult? Function(Parrot value)? parrot,
    TResult? Function(Map<String, dynamic>? value)? fallback,
  }) {
    final _that = this;
    switch (_that) {
      case AnimalDog() when dog != null:
        return dog(_that.value);
      case AnimalCat() when cat != null:
        return cat(_that.value);
      case AnimalParrot() when parrot != null:
        return parrot(_that.value);
      case AnimalFallback() when fallback != null:
        return fallback(_that.value);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class AnimalDog extends Animal {
  const AnimalDog(this.value, {final String? $type})
      : $type = $type ?? 'Dog',
        super._();
  factory AnimalDog.fromJson(Map<String, dynamic> json) =>
      _$AnimalDogFromJson(json);

  @override
  final Dog value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Animal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnimalDogCopyWith<AnimalDog> get copyWith =>
      _$AnimalDogCopyWithImpl<AnimalDog>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnimalDogToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnimalDog &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'Animal.dog(value: $value)';
  }
}

/// @nodoc
abstract mixin class $AnimalDogCopyWith<$Res> implements $AnimalCopyWith<$Res> {
  factory $AnimalDogCopyWith(AnimalDog value, $Res Function(AnimalDog) _then) =
      _$AnimalDogCopyWithImpl;
  @useResult
  $Res call({Dog value});

  $DogCopyWith<$Res> get value;
}

/// @nodoc
class _$AnimalDogCopyWithImpl<$Res> implements $AnimalDogCopyWith<$Res> {
  _$AnimalDogCopyWithImpl(this._self, this._then);

  final AnimalDog _self;
  final $Res Function(AnimalDog) _then;

  /// Create a copy of Animal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(AnimalDog(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as Dog,
    ));
  }

  /// Create a copy of Animal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DogCopyWith<$Res> get value {
    return $DogCopyWith<$Res>(_self.value, (value) {
      return _then(_self.copyWith(value: value));
    });
  }
}

/// @nodoc

@jsonSerializable
class AnimalCat extends Animal {
  const AnimalCat(this.value, {final String? $type})
      : $type = $type ?? 'Cat',
        super._();
  factory AnimalCat.fromJson(Map<String, dynamic> json) =>
      _$AnimalCatFromJson(json);

  @override
  final Cat value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Animal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnimalCatCopyWith<AnimalCat> get copyWith =>
      _$AnimalCatCopyWithImpl<AnimalCat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnimalCatToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnimalCat &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'Animal.cat(value: $value)';
  }
}

/// @nodoc
abstract mixin class $AnimalCatCopyWith<$Res> implements $AnimalCopyWith<$Res> {
  factory $AnimalCatCopyWith(AnimalCat value, $Res Function(AnimalCat) _then) =
      _$AnimalCatCopyWithImpl;
  @useResult
  $Res call({Cat value});

  $CatCopyWith<$Res> get value;
}

/// @nodoc
class _$AnimalCatCopyWithImpl<$Res> implements $AnimalCatCopyWith<$Res> {
  _$AnimalCatCopyWithImpl(this._self, this._then);

  final AnimalCat _self;
  final $Res Function(AnimalCat) _then;

  /// Create a copy of Animal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(AnimalCat(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as Cat,
    ));
  }

  /// Create a copy of Animal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CatCopyWith<$Res> get value {
    return $CatCopyWith<$Res>(_self.value, (value) {
      return _then(_self.copyWith(value: value));
    });
  }
}

/// @nodoc

@jsonSerializable
class AnimalParrot extends Animal {
  const AnimalParrot(this.value, {final String? $type})
      : $type = $type ?? 'Parrot',
        super._();
  factory AnimalParrot.fromJson(Map<String, dynamic> json) =>
      _$AnimalParrotFromJson(json);

  @override
  final Parrot value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Animal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnimalParrotCopyWith<AnimalParrot> get copyWith =>
      _$AnimalParrotCopyWithImpl<AnimalParrot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnimalParrotToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnimalParrot &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'Animal.parrot(value: $value)';
  }
}

/// @nodoc
abstract mixin class $AnimalParrotCopyWith<$Res>
    implements $AnimalCopyWith<$Res> {
  factory $AnimalParrotCopyWith(
          AnimalParrot value, $Res Function(AnimalParrot) _then) =
      _$AnimalParrotCopyWithImpl;
  @useResult
  $Res call({Parrot value});

  $ParrotCopyWith<$Res> get value;
}

/// @nodoc
class _$AnimalParrotCopyWithImpl<$Res> implements $AnimalParrotCopyWith<$Res> {
  _$AnimalParrotCopyWithImpl(this._self, this._then);

  final AnimalParrot _self;
  final $Res Function(AnimalParrot) _then;

  /// Create a copy of Animal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(AnimalParrot(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as Parrot,
    ));
  }

  /// Create a copy of Animal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParrotCopyWith<$Res> get value {
    return $ParrotCopyWith<$Res>(_self.value, (value) {
      return _then(_self.copyWith(value: value));
    });
  }
}

/// @nodoc

@jsonSerializable
class AnimalFallback extends Animal {
  const AnimalFallback(final Map<String, dynamic>? value, {final String? $type})
      : _value = value,
        $type = $type ?? 'fallback',
        super._();
  factory AnimalFallback.fromJson(Map<String, dynamic> json) =>
      _$AnimalFallbackFromJson(json);

  final Map<String, dynamic>? _value;
  @override
  Map<String, dynamic>? get value {
    final value = _value;
    if (value == null) return null;
    if (_value is EqualUnmodifiableMapView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Animal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnimalFallbackCopyWith<AnimalFallback> get copyWith =>
      _$AnimalFallbackCopyWithImpl<AnimalFallback>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnimalFallbackToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnimalFallback &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  @override
  String toString() {
    return 'Animal.fallback(value: $value)';
  }
}

/// @nodoc
abstract mixin class $AnimalFallbackCopyWith<$Res>
    implements $AnimalCopyWith<$Res> {
  factory $AnimalFallbackCopyWith(
          AnimalFallback value, $Res Function(AnimalFallback) _then) =
      _$AnimalFallbackCopyWithImpl;
  @useResult
  $Res call({Map<String, dynamic>? value});
}

/// @nodoc
class _$AnimalFallbackCopyWithImpl<$Res>
    implements $AnimalFallbackCopyWith<$Res> {
  _$AnimalFallbackCopyWithImpl(this._self, this._then);

  final AnimalFallback _self;
  final $Res Function(AnimalFallback) _then;

  /// Create a copy of Animal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
  }) {
    return _then(AnimalFallback(
      freezed == value
          ? _self._value
          : value // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}
