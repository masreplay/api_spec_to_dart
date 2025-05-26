// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_animal_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateAnimalResponse {
  /// animal
  @JsonKey(name: CreateAnimalResponse.animalKey)
  Animal get animal;

  /// message
  @JsonKey(name: CreateAnimalResponse.messageKey)
  String get message;

  /// Create a copy of CreateAnimalResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateAnimalResponseCopyWith<CreateAnimalResponse> get copyWith =>
      _$CreateAnimalResponseCopyWithImpl<CreateAnimalResponse>(
        this as CreateAnimalResponse,
        _$identity,
      );

  /// Serializes this CreateAnimalResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateAnimalResponse &&
            (identical(other.animal, animal) || other.animal == animal) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, animal, message);

  @override
  String toString() {
    return 'CreateAnimalResponse(animal: $animal, message: $message)';
  }
}

/// @nodoc
abstract mixin class $CreateAnimalResponseCopyWith<$Res> {
  factory $CreateAnimalResponseCopyWith(
    CreateAnimalResponse value,
    $Res Function(CreateAnimalResponse) _then,
  ) = _$CreateAnimalResponseCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: CreateAnimalResponse.animalKey) Animal animal,
    @JsonKey(name: CreateAnimalResponse.messageKey) String message,
  });

  $AnimalCopyWith<$Res> get animal;
}

/// @nodoc
class _$CreateAnimalResponseCopyWithImpl<$Res>
    implements $CreateAnimalResponseCopyWith<$Res> {
  _$CreateAnimalResponseCopyWithImpl(this._self, this._then);

  final CreateAnimalResponse _self;
  final $Res Function(CreateAnimalResponse) _then;

  /// Create a copy of CreateAnimalResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? animal = null, Object? message = null}) {
    return _then(
      _self.copyWith(
        animal:
            null == animal
                ? _self.animal
                : animal // ignore: cast_nullable_to_non_nullable
                    as Animal,
        message:
            null == message
                ? _self.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }

  /// Create a copy of CreateAnimalResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnimalCopyWith<$Res> get animal {
    return $AnimalCopyWith<$Res>(_self.animal, (value) {
      return _then(_self.copyWith(animal: value));
    });
  }
}

/// @nodoc

@jsonSerializable
class _CreateAnimalResponse extends CreateAnimalResponse {
  const _CreateAnimalResponse({
    @JsonKey(name: CreateAnimalResponse.animalKey) required this.animal,
    @JsonKey(name: CreateAnimalResponse.messageKey) required this.message,
  }) : super._();
  factory _CreateAnimalResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateAnimalResponseFromJson(json);

  /// animal
  @override
  @JsonKey(name: CreateAnimalResponse.animalKey)
  final Animal animal;

  /// message
  @override
  @JsonKey(name: CreateAnimalResponse.messageKey)
  final String message;

  /// Create a copy of CreateAnimalResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateAnimalResponseCopyWith<_CreateAnimalResponse> get copyWith =>
      __$CreateAnimalResponseCopyWithImpl<_CreateAnimalResponse>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$CreateAnimalResponseToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateAnimalResponse &&
            (identical(other.animal, animal) || other.animal == animal) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, animal, message);

  @override
  String toString() {
    return 'CreateAnimalResponse(animal: $animal, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$CreateAnimalResponseCopyWith<$Res>
    implements $CreateAnimalResponseCopyWith<$Res> {
  factory _$CreateAnimalResponseCopyWith(
    _CreateAnimalResponse value,
    $Res Function(_CreateAnimalResponse) _then,
  ) = __$CreateAnimalResponseCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: CreateAnimalResponse.animalKey) Animal animal,
    @JsonKey(name: CreateAnimalResponse.messageKey) String message,
  });

  @override
  $AnimalCopyWith<$Res> get animal;
}

/// @nodoc
class __$CreateAnimalResponseCopyWithImpl<$Res>
    implements _$CreateAnimalResponseCopyWith<$Res> {
  __$CreateAnimalResponseCopyWithImpl(this._self, this._then);

  final _CreateAnimalResponse _self;
  final $Res Function(_CreateAnimalResponse) _then;

  /// Create a copy of CreateAnimalResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? animal = null, Object? message = null}) {
    return _then(
      _CreateAnimalResponse(
        animal:
            null == animal
                ? _self.animal
                : animal // ignore: cast_nullable_to_non_nullable
                    as Animal,
        message:
            null == message
                ? _self.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }

  /// Create a copy of CreateAnimalResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnimalCopyWith<$Res> get animal {
    return $AnimalCopyWith<$Res>(_self.animal, (value) {
      return _then(_self.copyWith(animal: value));
    });
  }
}
