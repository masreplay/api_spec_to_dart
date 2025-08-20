// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models_response_multiple_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModelsResponseMultipleQueryParameters {
  /// isUser
  @JsonKey(name: ModelsResponseMultipleQueryParameters.isUserKey)
  bool get isUser;

  /// Create a copy of ModelsResponseMultipleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModelsResponseMultipleQueryParametersCopyWith<
          ModelsResponseMultipleQueryParameters>
      get copyWith => _$ModelsResponseMultipleQueryParametersCopyWithImpl<
              ModelsResponseMultipleQueryParameters>(
          this as ModelsResponseMultipleQueryParameters, _$identity);

  /// Serializes this ModelsResponseMultipleQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModelsResponseMultipleQueryParameters &&
            (identical(other.isUser, isUser) || other.isUser == isUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isUser);

  @override
  String toString() {
    return 'ModelsResponseMultipleQueryParameters(isUser: $isUser)';
  }
}

/// @nodoc
abstract mixin class $ModelsResponseMultipleQueryParametersCopyWith<$Res> {
  factory $ModelsResponseMultipleQueryParametersCopyWith(
          ModelsResponseMultipleQueryParameters value,
          $Res Function(ModelsResponseMultipleQueryParameters) _then) =
      _$ModelsResponseMultipleQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ModelsResponseMultipleQueryParameters.isUserKey)
      bool isUser});
}

/// @nodoc
class _$ModelsResponseMultipleQueryParametersCopyWithImpl<$Res>
    implements $ModelsResponseMultipleQueryParametersCopyWith<$Res> {
  _$ModelsResponseMultipleQueryParametersCopyWithImpl(this._self, this._then);

  final ModelsResponseMultipleQueryParameters _self;
  final $Res Function(ModelsResponseMultipleQueryParameters) _then;

  /// Create a copy of ModelsResponseMultipleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUser = null,
  }) {
    return _then(_self.copyWith(
      isUser: null == isUser
          ? _self.isUser
          : isUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [ModelsResponseMultipleQueryParameters].
extension ModelsResponseMultipleQueryParametersPatterns
    on ModelsResponseMultipleQueryParameters {
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
    TResult Function(_ModelsResponseMultipleQueryParameters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModelsResponseMultipleQueryParameters() when $default != null:
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
    TResult Function(_ModelsResponseMultipleQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModelsResponseMultipleQueryParameters():
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
    TResult? Function(_ModelsResponseMultipleQueryParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModelsResponseMultipleQueryParameters() when $default != null:
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
            @JsonKey(name: ModelsResponseMultipleQueryParameters.isUserKey)
            bool isUser)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ModelsResponseMultipleQueryParameters() when $default != null:
        return $default(_that.isUser);
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
            @JsonKey(name: ModelsResponseMultipleQueryParameters.isUserKey)
            bool isUser)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModelsResponseMultipleQueryParameters():
        return $default(_that.isUser);
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
            @JsonKey(name: ModelsResponseMultipleQueryParameters.isUserKey)
            bool isUser)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ModelsResponseMultipleQueryParameters() when $default != null:
        return $default(_that.isUser);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _ModelsResponseMultipleQueryParameters
    extends ModelsResponseMultipleQueryParameters {
  const _ModelsResponseMultipleQueryParameters(
      {@JsonKey(name: ModelsResponseMultipleQueryParameters.isUserKey)
      this.isUser = true})
      : super._();
  factory _ModelsResponseMultipleQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$ModelsResponseMultipleQueryParametersFromJson(json);

  /// isUser
  @override
  @JsonKey(name: ModelsResponseMultipleQueryParameters.isUserKey)
  final bool isUser;

  /// Create a copy of ModelsResponseMultipleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModelsResponseMultipleQueryParametersCopyWith<
          _ModelsResponseMultipleQueryParameters>
      get copyWith => __$ModelsResponseMultipleQueryParametersCopyWithImpl<
          _ModelsResponseMultipleQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModelsResponseMultipleQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModelsResponseMultipleQueryParameters &&
            (identical(other.isUser, isUser) || other.isUser == isUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isUser);

  @override
  String toString() {
    return 'ModelsResponseMultipleQueryParameters(isUser: $isUser)';
  }
}

/// @nodoc
abstract mixin class _$ModelsResponseMultipleQueryParametersCopyWith<$Res>
    implements $ModelsResponseMultipleQueryParametersCopyWith<$Res> {
  factory _$ModelsResponseMultipleQueryParametersCopyWith(
          _ModelsResponseMultipleQueryParameters value,
          $Res Function(_ModelsResponseMultipleQueryParameters) _then) =
      __$ModelsResponseMultipleQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ModelsResponseMultipleQueryParameters.isUserKey)
      bool isUser});
}

/// @nodoc
class __$ModelsResponseMultipleQueryParametersCopyWithImpl<$Res>
    implements _$ModelsResponseMultipleQueryParametersCopyWith<$Res> {
  __$ModelsResponseMultipleQueryParametersCopyWithImpl(this._self, this._then);

  final _ModelsResponseMultipleQueryParameters _self;
  final $Res Function(_ModelsResponseMultipleQueryParameters) _then;

  /// Create a copy of ModelsResponseMultipleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isUser = null,
  }) {
    return _then(_ModelsResponseMultipleQueryParameters(
      isUser: null == isUser
          ? _self.isUser
          : isUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}
