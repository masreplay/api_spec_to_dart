// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'animal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Animal _$AnimalFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case '#/components/schemas/Dog':
      return AnimalComponentsSchemasDog.fromJson(json);
    case '#/components/schemas/Cat':
      return AnimalComponentsSchemasCat.fromJson(json);
    case '#/components/schemas/Parrot':
      return AnimalComponentsSchemasParrot.fromJson(json);

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

/// @nodoc

@jsonSerializable
class AnimalComponentsSchemasDog extends Animal {
  const AnimalComponentsSchemasDog(this.value, {final String? $type})
    : $type = $type ?? '#/components/schemas/Dog',
      super._();
  factory AnimalComponentsSchemasDog.fromJson(Map<String, dynamic> json) =>
      _$AnimalComponentsSchemasDogFromJson(json);

  @override
  final Dog value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Animal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnimalComponentsSchemasDogCopyWith<AnimalComponentsSchemasDog>
  get copyWith =>
      _$AnimalComponentsSchemasDogCopyWithImpl<AnimalComponentsSchemasDog>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$AnimalComponentsSchemasDogToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnimalComponentsSchemasDog &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'Animal.componentsSchemasDog(value: $value)';
  }
}

/// @nodoc
abstract mixin class $AnimalComponentsSchemasDogCopyWith<$Res>
    implements $AnimalCopyWith<$Res> {
  factory $AnimalComponentsSchemasDogCopyWith(
    AnimalComponentsSchemasDog value,
    $Res Function(AnimalComponentsSchemasDog) _then,
  ) = _$AnimalComponentsSchemasDogCopyWithImpl;
  @useResult
  $Res call({Dog value});

  $DogCopyWith<$Res> get value;
}

/// @nodoc
class _$AnimalComponentsSchemasDogCopyWithImpl<$Res>
    implements $AnimalComponentsSchemasDogCopyWith<$Res> {
  _$AnimalComponentsSchemasDogCopyWithImpl(this._self, this._then);

  final AnimalComponentsSchemasDog _self;
  final $Res Function(AnimalComponentsSchemasDog) _then;

  /// Create a copy of Animal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? value = null}) {
    return _then(
      AnimalComponentsSchemasDog(
        null == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                as Dog,
      ),
    );
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
class AnimalComponentsSchemasCat extends Animal {
  const AnimalComponentsSchemasCat(this.value, {final String? $type})
    : $type = $type ?? '#/components/schemas/Cat',
      super._();
  factory AnimalComponentsSchemasCat.fromJson(Map<String, dynamic> json) =>
      _$AnimalComponentsSchemasCatFromJson(json);

  @override
  final Cat value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Animal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnimalComponentsSchemasCatCopyWith<AnimalComponentsSchemasCat>
  get copyWith =>
      _$AnimalComponentsSchemasCatCopyWithImpl<AnimalComponentsSchemasCat>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$AnimalComponentsSchemasCatToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnimalComponentsSchemasCat &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'Animal.componentsSchemasCat(value: $value)';
  }
}

/// @nodoc
abstract mixin class $AnimalComponentsSchemasCatCopyWith<$Res>
    implements $AnimalCopyWith<$Res> {
  factory $AnimalComponentsSchemasCatCopyWith(
    AnimalComponentsSchemasCat value,
    $Res Function(AnimalComponentsSchemasCat) _then,
  ) = _$AnimalComponentsSchemasCatCopyWithImpl;
  @useResult
  $Res call({Cat value});

  $CatCopyWith<$Res> get value;
}

/// @nodoc
class _$AnimalComponentsSchemasCatCopyWithImpl<$Res>
    implements $AnimalComponentsSchemasCatCopyWith<$Res> {
  _$AnimalComponentsSchemasCatCopyWithImpl(this._self, this._then);

  final AnimalComponentsSchemasCat _self;
  final $Res Function(AnimalComponentsSchemasCat) _then;

  /// Create a copy of Animal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? value = null}) {
    return _then(
      AnimalComponentsSchemasCat(
        null == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                as Cat,
      ),
    );
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
class AnimalComponentsSchemasParrot extends Animal {
  const AnimalComponentsSchemasParrot(this.value, {final String? $type})
    : $type = $type ?? '#/components/schemas/Parrot',
      super._();
  factory AnimalComponentsSchemasParrot.fromJson(Map<String, dynamic> json) =>
      _$AnimalComponentsSchemasParrotFromJson(json);

  @override
  final Parrot value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Animal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnimalComponentsSchemasParrotCopyWith<AnimalComponentsSchemasParrot>
  get copyWith => _$AnimalComponentsSchemasParrotCopyWithImpl<
    AnimalComponentsSchemasParrot
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnimalComponentsSchemasParrotToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnimalComponentsSchemasParrot &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'Animal.componentsSchemasParrot(value: $value)';
  }
}

/// @nodoc
abstract mixin class $AnimalComponentsSchemasParrotCopyWith<$Res>
    implements $AnimalCopyWith<$Res> {
  factory $AnimalComponentsSchemasParrotCopyWith(
    AnimalComponentsSchemasParrot value,
    $Res Function(AnimalComponentsSchemasParrot) _then,
  ) = _$AnimalComponentsSchemasParrotCopyWithImpl;
  @useResult
  $Res call({Parrot value});

  $ParrotCopyWith<$Res> get value;
}

/// @nodoc
class _$AnimalComponentsSchemasParrotCopyWithImpl<$Res>
    implements $AnimalComponentsSchemasParrotCopyWith<$Res> {
  _$AnimalComponentsSchemasParrotCopyWithImpl(this._self, this._then);

  final AnimalComponentsSchemasParrot _self;
  final $Res Function(AnimalComponentsSchemasParrot) _then;

  /// Create a copy of Animal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? value = null}) {
    return _then(
      AnimalComponentsSchemasParrot(
        null == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                as Parrot,
      ),
    );
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
    return _$AnimalFallbackToJson(this);
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
    AnimalFallback value,
    $Res Function(AnimalFallback) _then,
  ) = _$AnimalFallbackCopyWithImpl;
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
  $Res call({Object? value = freezed}) {
    return _then(
      AnimalFallback(
        freezed == value
            ? _self._value
            : value // ignore: cast_nullable_to_non_nullable
                as Map<String, dynamic>?,
      ),
    );
  }
}
