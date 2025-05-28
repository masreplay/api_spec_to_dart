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
    case '#/components/schemas/User':
      return ResponseModelsResponseMultipleComponentsSchemasUser.fromJson(json);
    case '#/components/schemas/Location':
      return ResponseModelsResponseMultipleComponentsSchemasLocation.fromJson(
        json,
      );

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
class ResponseModelsResponseMultipleComponentsSchemasUser
    extends ResponseModelsResponseMultiple {
  const ResponseModelsResponseMultipleComponentsSchemasUser(
    this.value, {
    final String? $type,
  }) : $type = $type ?? '#/components/schemas/User',
       super._();
  factory ResponseModelsResponseMultipleComponentsSchemasUser.fromJson(
    Map<String, dynamic> json,
  ) => _$ResponseModelsResponseMultipleComponentsSchemasUserFromJson(json);

  @override
  final User value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ResponseModelsResponseMultiple
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseModelsResponseMultipleComponentsSchemasUserCopyWith<
    ResponseModelsResponseMultipleComponentsSchemasUser
  >
  get copyWith =>
      _$ResponseModelsResponseMultipleComponentsSchemasUserCopyWithImpl<
        ResponseModelsResponseMultipleComponentsSchemasUser
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseModelsResponseMultipleComponentsSchemasUserToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseModelsResponseMultipleComponentsSchemasUser &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ResponseModelsResponseMultiple.componentsSchemasUser(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ResponseModelsResponseMultipleComponentsSchemasUserCopyWith<
  $Res
>
    implements $ResponseModelsResponseMultipleCopyWith<$Res> {
  factory $ResponseModelsResponseMultipleComponentsSchemasUserCopyWith(
    ResponseModelsResponseMultipleComponentsSchemasUser value,
    $Res Function(ResponseModelsResponseMultipleComponentsSchemasUser) _then,
  ) = _$ResponseModelsResponseMultipleComponentsSchemasUserCopyWithImpl;
  @useResult
  $Res call({User value});

  $UserCopyWith<$Res> get value;
}

/// @nodoc
class _$ResponseModelsResponseMultipleComponentsSchemasUserCopyWithImpl<$Res>
    implements
        $ResponseModelsResponseMultipleComponentsSchemasUserCopyWith<$Res> {
  _$ResponseModelsResponseMultipleComponentsSchemasUserCopyWithImpl(
    this._self,
    this._then,
  );

  final ResponseModelsResponseMultipleComponentsSchemasUser _self;
  final $Res Function(ResponseModelsResponseMultipleComponentsSchemasUser)
  _then;

  /// Create a copy of ResponseModelsResponseMultiple
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? value = null}) {
    return _then(
      ResponseModelsResponseMultipleComponentsSchemasUser(
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
class ResponseModelsResponseMultipleComponentsSchemasLocation
    extends ResponseModelsResponseMultiple {
  const ResponseModelsResponseMultipleComponentsSchemasLocation(
    this.value, {
    final String? $type,
  }) : $type = $type ?? '#/components/schemas/Location',
       super._();
  factory ResponseModelsResponseMultipleComponentsSchemasLocation.fromJson(
    Map<String, dynamic> json,
  ) => _$ResponseModelsResponseMultipleComponentsSchemasLocationFromJson(json);

  @override
  final Location value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ResponseModelsResponseMultiple
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseModelsResponseMultipleComponentsSchemasLocationCopyWith<
    ResponseModelsResponseMultipleComponentsSchemasLocation
  >
  get copyWith =>
      _$ResponseModelsResponseMultipleComponentsSchemasLocationCopyWithImpl<
        ResponseModelsResponseMultipleComponentsSchemasLocation
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseModelsResponseMultipleComponentsSchemasLocationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseModelsResponseMultipleComponentsSchemasLocation &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ResponseModelsResponseMultiple.componentsSchemasLocation(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ResponseModelsResponseMultipleComponentsSchemasLocationCopyWith<
  $Res
>
    implements $ResponseModelsResponseMultipleCopyWith<$Res> {
  factory $ResponseModelsResponseMultipleComponentsSchemasLocationCopyWith(
    ResponseModelsResponseMultipleComponentsSchemasLocation value,
    $Res Function(ResponseModelsResponseMultipleComponentsSchemasLocation)
    _then,
  ) = _$ResponseModelsResponseMultipleComponentsSchemasLocationCopyWithImpl;
  @useResult
  $Res call({Location value});

  $LocationCopyWith<$Res> get value;
}

/// @nodoc
class _$ResponseModelsResponseMultipleComponentsSchemasLocationCopyWithImpl<
  $Res
>
    implements
        $ResponseModelsResponseMultipleComponentsSchemasLocationCopyWith<$Res> {
  _$ResponseModelsResponseMultipleComponentsSchemasLocationCopyWithImpl(
    this._self,
    this._then,
  );

  final ResponseModelsResponseMultipleComponentsSchemasLocation _self;
  final $Res Function(ResponseModelsResponseMultipleComponentsSchemasLocation)
  _then;

  /// Create a copy of ResponseModelsResponseMultiple
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? value = null}) {
    return _then(
      ResponseModelsResponseMultipleComponentsSchemasLocation(
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
