// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_validation_conditional_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidationValidationConditionalQueryParameters {
  /// userId
  @JsonKey(name: ValidationValidationConditionalQueryParameters.userIdKey)
  int? get userId;

  /// username
  @JsonKey(name: ValidationValidationConditionalQueryParameters.usernameKey)
  String? get username;

  /// Create a copy of ValidationValidationConditionalQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValidationValidationConditionalQueryParametersCopyWith<
          ValidationValidationConditionalQueryParameters>
      get copyWith =>
          _$ValidationValidationConditionalQueryParametersCopyWithImpl<
                  ValidationValidationConditionalQueryParameters>(
              this as ValidationValidationConditionalQueryParameters,
              _$identity);

  /// Serializes this ValidationValidationConditionalQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidationValidationConditionalQueryParameters &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, username);

  @override
  String toString() {
    return 'ValidationValidationConditionalQueryParameters(userId: $userId, username: $username)';
  }
}

/// @nodoc
abstract mixin class $ValidationValidationConditionalQueryParametersCopyWith<
    $Res> {
  factory $ValidationValidationConditionalQueryParametersCopyWith(
          ValidationValidationConditionalQueryParameters value,
          $Res Function(ValidationValidationConditionalQueryParameters) _then) =
      _$ValidationValidationConditionalQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ValidationValidationConditionalQueryParameters.userIdKey)
      int? userId,
      @JsonKey(name: ValidationValidationConditionalQueryParameters.usernameKey)
      String? username});
}

/// @nodoc
class _$ValidationValidationConditionalQueryParametersCopyWithImpl<$Res>
    implements $ValidationValidationConditionalQueryParametersCopyWith<$Res> {
  _$ValidationValidationConditionalQueryParametersCopyWithImpl(
      this._self, this._then);

  final ValidationValidationConditionalQueryParameters _self;
  final $Res Function(ValidationValidationConditionalQueryParameters) _then;

  /// Create a copy of ValidationValidationConditionalQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? username = freezed,
  }) {
    return _then(_self.copyWith(
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ValidationValidationConditionalQueryParameters].
extension ValidationValidationConditionalQueryParametersPatterns
    on ValidationValidationConditionalQueryParameters {
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
    TResult Function(_ValidationValidationConditionalQueryParameters value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValidationValidationConditionalQueryParameters()
          when $default != null:
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
    TResult Function(_ValidationValidationConditionalQueryParameters value)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidationValidationConditionalQueryParameters():
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
    TResult? Function(_ValidationValidationConditionalQueryParameters value)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidationValidationConditionalQueryParameters()
          when $default != null:
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
            @JsonKey(
                name: ValidationValidationConditionalQueryParameters.userIdKey)
            int? userId,
            @JsonKey(
                name:
                    ValidationValidationConditionalQueryParameters.usernameKey)
            String? username)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValidationValidationConditionalQueryParameters()
          when $default != null:
        return $default(_that.userId, _that.username);
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
            @JsonKey(
                name: ValidationValidationConditionalQueryParameters.userIdKey)
            int? userId,
            @JsonKey(
                name:
                    ValidationValidationConditionalQueryParameters.usernameKey)
            String? username)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidationValidationConditionalQueryParameters():
        return $default(_that.userId, _that.username);
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
            @JsonKey(
                name: ValidationValidationConditionalQueryParameters.userIdKey)
            int? userId,
            @JsonKey(
                name:
                    ValidationValidationConditionalQueryParameters.usernameKey)
            String? username)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidationValidationConditionalQueryParameters()
          when $default != null:
        return $default(_that.userId, _that.username);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _ValidationValidationConditionalQueryParameters
    extends ValidationValidationConditionalQueryParameters {
  const _ValidationValidationConditionalQueryParameters(
      {@JsonKey(name: ValidationValidationConditionalQueryParameters.userIdKey)
      required this.userId,
      @JsonKey(name: ValidationValidationConditionalQueryParameters.usernameKey)
      required this.username})
      : super._();
  factory _ValidationValidationConditionalQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$ValidationValidationConditionalQueryParametersFromJson(json);

  /// userId
  @override
  @JsonKey(name: ValidationValidationConditionalQueryParameters.userIdKey)
  final int? userId;

  /// username
  @override
  @JsonKey(name: ValidationValidationConditionalQueryParameters.usernameKey)
  final String? username;

  /// Create a copy of ValidationValidationConditionalQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValidationValidationConditionalQueryParametersCopyWith<
          _ValidationValidationConditionalQueryParameters>
      get copyWith =>
          __$ValidationValidationConditionalQueryParametersCopyWithImpl<
                  _ValidationValidationConditionalQueryParameters>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ValidationValidationConditionalQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValidationValidationConditionalQueryParameters &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, username);

  @override
  String toString() {
    return 'ValidationValidationConditionalQueryParameters(userId: $userId, username: $username)';
  }
}

/// @nodoc
abstract mixin class _$ValidationValidationConditionalQueryParametersCopyWith<
        $Res>
    implements $ValidationValidationConditionalQueryParametersCopyWith<$Res> {
  factory _$ValidationValidationConditionalQueryParametersCopyWith(
          _ValidationValidationConditionalQueryParameters value,
          $Res Function(_ValidationValidationConditionalQueryParameters)
              _then) =
      __$ValidationValidationConditionalQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ValidationValidationConditionalQueryParameters.userIdKey)
      int? userId,
      @JsonKey(name: ValidationValidationConditionalQueryParameters.usernameKey)
      String? username});
}

/// @nodoc
class __$ValidationValidationConditionalQueryParametersCopyWithImpl<$Res>
    implements _$ValidationValidationConditionalQueryParametersCopyWith<$Res> {
  __$ValidationValidationConditionalQueryParametersCopyWithImpl(
      this._self, this._then);

  final _ValidationValidationConditionalQueryParameters _self;
  final $Res Function(_ValidationValidationConditionalQueryParameters) _then;

  /// Create a copy of ValidationValidationConditionalQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = freezed,
    Object? username = freezed,
  }) {
    return _then(_ValidationValidationConditionalQueryParameters(
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}
