// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_dog_parrot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CatDogParrot _$CatDogParrotFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'dog':
      return CatDogParrotDog.fromJson(json);
    case 'cat':
      return CatDogParrotCat.fromJson(json);
    case 'parrot':
      return CatDogParrotParrot.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'CatDogParrot',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CatDogParrot {
  Object get value;

  /// Serializes this CatDogParrot to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CatDogParrot &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'CatDogParrot(value: $value)';
  }
}

/// @nodoc
class $CatDogParrotCopyWith<$Res> {
  $CatDogParrotCopyWith(CatDogParrot _, $Res Function(CatDogParrot) __);
}

/// @nodoc

@jsonSerializable
class CatDogParrotDog extends CatDogParrot {
  const CatDogParrotDog(this.value, {final String? $type})
      : $type = $type ?? 'dog',
        super._();
  factory CatDogParrotDog.fromJson(Map<String, dynamic> json) =>
      _$CatDogParrotDogFromJson(json);

  @override
  final Dog value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of CatDogParrot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CatDogParrotDogCopyWith<CatDogParrotDog> get copyWith =>
      _$CatDogParrotDogCopyWithImpl<CatDogParrotDog>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CatDogParrotDogToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CatDogParrotDog &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'CatDogParrot.dog(value: $value)';
  }
}

/// @nodoc
abstract mixin class $CatDogParrotDogCopyWith<$Res>
    implements $CatDogParrotCopyWith<$Res> {
  factory $CatDogParrotDogCopyWith(
          CatDogParrotDog value, $Res Function(CatDogParrotDog) _then) =
      _$CatDogParrotDogCopyWithImpl;
  @useResult
  $Res call({Dog value});

  $DogCopyWith<$Res> get value;
}

/// @nodoc
class _$CatDogParrotDogCopyWithImpl<$Res>
    implements $CatDogParrotDogCopyWith<$Res> {
  _$CatDogParrotDogCopyWithImpl(this._self, this._then);

  final CatDogParrotDog _self;
  final $Res Function(CatDogParrotDog) _then;

  /// Create a copy of CatDogParrot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(CatDogParrotDog(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as Dog,
    ));
  }

  /// Create a copy of CatDogParrot
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
class CatDogParrotCat extends CatDogParrot {
  const CatDogParrotCat(this.value, {final String? $type})
      : $type = $type ?? 'cat',
        super._();
  factory CatDogParrotCat.fromJson(Map<String, dynamic> json) =>
      _$CatDogParrotCatFromJson(json);

  @override
  final Cat value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of CatDogParrot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CatDogParrotCatCopyWith<CatDogParrotCat> get copyWith =>
      _$CatDogParrotCatCopyWithImpl<CatDogParrotCat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CatDogParrotCatToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CatDogParrotCat &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'CatDogParrot.cat(value: $value)';
  }
}

/// @nodoc
abstract mixin class $CatDogParrotCatCopyWith<$Res>
    implements $CatDogParrotCopyWith<$Res> {
  factory $CatDogParrotCatCopyWith(
          CatDogParrotCat value, $Res Function(CatDogParrotCat) _then) =
      _$CatDogParrotCatCopyWithImpl;
  @useResult
  $Res call({Cat value});

  $CatCopyWith<$Res> get value;
}

/// @nodoc
class _$CatDogParrotCatCopyWithImpl<$Res>
    implements $CatDogParrotCatCopyWith<$Res> {
  _$CatDogParrotCatCopyWithImpl(this._self, this._then);

  final CatDogParrotCat _self;
  final $Res Function(CatDogParrotCat) _then;

  /// Create a copy of CatDogParrot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(CatDogParrotCat(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as Cat,
    ));
  }

  /// Create a copy of CatDogParrot
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
class CatDogParrotParrot extends CatDogParrot {
  const CatDogParrotParrot(this.value, {final String? $type})
      : $type = $type ?? 'parrot',
        super._();
  factory CatDogParrotParrot.fromJson(Map<String, dynamic> json) =>
      _$CatDogParrotParrotFromJson(json);

  @override
  final Parrot value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of CatDogParrot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CatDogParrotParrotCopyWith<CatDogParrotParrot> get copyWith =>
      _$CatDogParrotParrotCopyWithImpl<CatDogParrotParrot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CatDogParrotParrotToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CatDogParrotParrot &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'CatDogParrot.parrot(value: $value)';
  }
}

/// @nodoc
abstract mixin class $CatDogParrotParrotCopyWith<$Res>
    implements $CatDogParrotCopyWith<$Res> {
  factory $CatDogParrotParrotCopyWith(
          CatDogParrotParrot value, $Res Function(CatDogParrotParrot) _then) =
      _$CatDogParrotParrotCopyWithImpl;
  @useResult
  $Res call({Parrot value});

  $ParrotCopyWith<$Res> get value;
}

/// @nodoc
class _$CatDogParrotParrotCopyWithImpl<$Res>
    implements $CatDogParrotParrotCopyWith<$Res> {
  _$CatDogParrotParrotCopyWithImpl(this._self, this._then);

  final CatDogParrotParrot _self;
  final $Res Function(CatDogParrotParrot) _then;

  /// Create a copy of CatDogParrot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(CatDogParrotParrot(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as Parrot,
    ));
  }

  /// Create a copy of CatDogParrot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParrotCopyWith<$Res> get value {
    return $ParrotCopyWith<$Res>(_self.value, (value) {
      return _then(_self.copyWith(value: value));
    });
  }
}
