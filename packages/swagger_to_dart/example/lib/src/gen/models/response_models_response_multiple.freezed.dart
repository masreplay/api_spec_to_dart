// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_models_response_multiple.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ResponseModelsResponseMultiple _$ResponseModelsResponseMultipleFromJson(
  Map<String, dynamic> json,
) {
  switch (json['runtimeType']) {
    case 'User':
      return ResponseModelsResponseMultipleUser.fromJson(json);
    case 'Location':
      return ResponseModelsResponseMultipleLocation.fromJson(json);

    default:
      return ResponseModelsResponseMultipleFallback.fromJson(json);
  }
}

/// @nodoc
mixin _$ResponseModelsResponseMultiple {
  Object? get value;

  /// Serializes this ResponseModelsResponseMultiple to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseModelsResponseMultiple &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'ResponseModelsResponseMultiple(value: $value)';
  }
}

/// @nodoc
class $ResponseModelsResponseMultipleCopyWith<$Res> {
  $ResponseModelsResponseMultipleCopyWith(
    ResponseModelsResponseMultiple _,
    $Res Function(ResponseModelsResponseMultiple) __,
  );
}

/// @nodoc

@jsonSerializable
class ResponseModelsResponseMultipleUser
    extends ResponseModelsResponseMultiple {
  const ResponseModelsResponseMultipleUser(this.value, {final String? $type})
    : $type = $type ?? 'User',
      super._();
  factory ResponseModelsResponseMultipleUser.fromJson(
    Map<String, dynamic> json,
  ) => _$ResponseModelsResponseMultipleUserFromJson(json);

  @override
  final User value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ResponseModelsResponseMultiple
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseModelsResponseMultipleUserCopyWith<
    ResponseModelsResponseMultipleUser
  >
  get copyWith => _$ResponseModelsResponseMultipleUserCopyWithImpl<
    ResponseModelsResponseMultipleUser
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseModelsResponseMultipleUserToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseModelsResponseMultipleUser &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ResponseModelsResponseMultiple.user(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ResponseModelsResponseMultipleUserCopyWith<$Res>
    implements $ResponseModelsResponseMultipleCopyWith<$Res> {
  factory $ResponseModelsResponseMultipleUserCopyWith(
    ResponseModelsResponseMultipleUser value,
    $Res Function(ResponseModelsResponseMultipleUser) _then,
  ) = _$ResponseModelsResponseMultipleUserCopyWithImpl;
  @useResult
  $Res call({User value});

  $UserCopyWith<$Res> get value;
}

/// @nodoc
class _$ResponseModelsResponseMultipleUserCopyWithImpl<$Res>
    implements $ResponseModelsResponseMultipleUserCopyWith<$Res> {
  _$ResponseModelsResponseMultipleUserCopyWithImpl(this._self, this._then);

  final ResponseModelsResponseMultipleUser _self;
  final $Res Function(ResponseModelsResponseMultipleUser) _then;

  /// Create a copy of ResponseModelsResponseMultiple
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? value = null}) {
    return _then(
      ResponseModelsResponseMultipleUser(
        null == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                as User,
      ),
    );
  }

  /// Create a copy of ResponseModelsResponseMultiple
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get value {
    return $UserCopyWith<$Res>(_self.value, (value) {
      return _then(_self.copyWith(value: value));
    });
  }
}

/// @nodoc

@jsonSerializable
class ResponseModelsResponseMultipleLocation
    extends ResponseModelsResponseMultiple {
  const ResponseModelsResponseMultipleLocation(
    this.value, {
    final String? $type,
  }) : $type = $type ?? 'Location',
       super._();
  factory ResponseModelsResponseMultipleLocation.fromJson(
    Map<String, dynamic> json,
  ) => _$ResponseModelsResponseMultipleLocationFromJson(json);

  @override
  final Location value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ResponseModelsResponseMultiple
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseModelsResponseMultipleLocationCopyWith<
    ResponseModelsResponseMultipleLocation
  >
  get copyWith => _$ResponseModelsResponseMultipleLocationCopyWithImpl<
    ResponseModelsResponseMultipleLocation
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseModelsResponseMultipleLocationToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseModelsResponseMultipleLocation &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ResponseModelsResponseMultiple.location(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ResponseModelsResponseMultipleLocationCopyWith<$Res>
    implements $ResponseModelsResponseMultipleCopyWith<$Res> {
  factory $ResponseModelsResponseMultipleLocationCopyWith(
    ResponseModelsResponseMultipleLocation value,
    $Res Function(ResponseModelsResponseMultipleLocation) _then,
  ) = _$ResponseModelsResponseMultipleLocationCopyWithImpl;
  @useResult
  $Res call({Location value});

  $LocationCopyWith<$Res> get value;
}

/// @nodoc
class _$ResponseModelsResponseMultipleLocationCopyWithImpl<$Res>
    implements $ResponseModelsResponseMultipleLocationCopyWith<$Res> {
  _$ResponseModelsResponseMultipleLocationCopyWithImpl(this._self, this._then);

  final ResponseModelsResponseMultipleLocation _self;
  final $Res Function(ResponseModelsResponseMultipleLocation) _then;

  /// Create a copy of ResponseModelsResponseMultiple
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? value = null}) {
    return _then(
      ResponseModelsResponseMultipleLocation(
        null == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                as Location,
      ),
    );
  }

  /// Create a copy of ResponseModelsResponseMultiple
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get value {
    return $LocationCopyWith<$Res>(_self.value, (value) {
      return _then(_self.copyWith(value: value));
    });
  }
}

/// @nodoc

@jsonSerializable
class ResponseModelsResponseMultipleFallback
    extends ResponseModelsResponseMultiple {
  const ResponseModelsResponseMultipleFallback(
    final Map<String, dynamic>? value, {
    final String? $type,
  }) : _value = value,
       $type = $type ?? 'fallback',
       super._();
  factory ResponseModelsResponseMultipleFallback.fromJson(
    Map<String, dynamic> json,
  ) => _$ResponseModelsResponseMultipleFallbackFromJson(json);

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

  /// Create a copy of ResponseModelsResponseMultiple
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseModelsResponseMultipleFallbackCopyWith<
    ResponseModelsResponseMultipleFallback
  >
  get copyWith => _$ResponseModelsResponseMultipleFallbackCopyWithImpl<
    ResponseModelsResponseMultipleFallback
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseModelsResponseMultipleFallbackToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseModelsResponseMultipleFallback &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  @override
  String toString() {
    return 'ResponseModelsResponseMultiple.fallback(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ResponseModelsResponseMultipleFallbackCopyWith<$Res>
    implements $ResponseModelsResponseMultipleCopyWith<$Res> {
  factory $ResponseModelsResponseMultipleFallbackCopyWith(
    ResponseModelsResponseMultipleFallback value,
    $Res Function(ResponseModelsResponseMultipleFallback) _then,
  ) = _$ResponseModelsResponseMultipleFallbackCopyWithImpl;
  @useResult
  $Res call({Map<String, dynamic>? value});
}

/// @nodoc
class _$ResponseModelsResponseMultipleFallbackCopyWithImpl<$Res>
    implements $ResponseModelsResponseMultipleFallbackCopyWith<$Res> {
  _$ResponseModelsResponseMultipleFallbackCopyWithImpl(this._self, this._then);

  final ResponseModelsResponseMultipleFallback _self;
  final $Res Function(ResponseModelsResponseMultipleFallback) _then;

  /// Create a copy of ResponseModelsResponseMultiple
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? value = freezed}) {
    return _then(
      ResponseModelsResponseMultipleFallback(
        freezed == value
            ? _self._value
            : value // ignore: cast_nullable_to_non_nullable
                as Map<String, dynamic>?,
      ),
    );
  }
}
