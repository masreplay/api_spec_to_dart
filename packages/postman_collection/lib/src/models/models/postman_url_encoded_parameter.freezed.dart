// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_url_encoded_parameter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanUrlEncodedParameter {
  /// key
  @JsonKey(name: PostmanUrlEncodedParameter.keyKey_)
  String get key;

  /// value
  @JsonKey(name: PostmanUrlEncodedParameter.valueKey_)
  String? get value;

  /// disabled
  @JsonKey(name: PostmanUrlEncodedParameter.disabledKey_)
  bool get disabled;

  /// description
  @JsonKey(name: PostmanUrlEncodedParameter.descriptionKey_)
  PostmanDescription? get description;

  /// Create a copy of PostmanUrlEncodedParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanUrlEncodedParameterCopyWith<PostmanUrlEncodedParameter>
  get copyWith =>
      _$PostmanUrlEncodedParameterCopyWithImpl<PostmanUrlEncodedParameter>(
        this as PostmanUrlEncodedParameter,
        _$identity,
      );

  /// Serializes this PostmanUrlEncodedParameter to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanUrlEncodedParameter;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanUrlEncodedParameter &&
            (identical(other.key, _this.key) || other.key == _this.key) &&
            (identical(other.value, _this.value) ||
                other.value == _this.value) &&
            (identical(other.disabled, _this.disabled) ||
                other.disabled == _this.disabled) &&
            (identical(other.description, _this.description) ||
                other.description == _this.description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanUrlEncodedParameter;
    return Object.hash(
      runtimeType,
      _this.key,
      _this.value,
      _this.disabled,
      _this.description,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanUrlEncodedParameter;
    return 'PostmanUrlEncodedParameter(key: ${_this.key}, value: ${_this.value}, disabled: ${_this.disabled}, description: ${_this.description})';
  }
}

/// @nodoc
abstract mixin class $PostmanUrlEncodedParameterCopyWith<$Res> {
  factory $PostmanUrlEncodedParameterCopyWith(
    PostmanUrlEncodedParameter value,
    $Res Function(PostmanUrlEncodedParameter) _then,
  ) = _$PostmanUrlEncodedParameterCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanUrlEncodedParameter.keyKey_) String key,
    @JsonKey(name: PostmanUrlEncodedParameter.valueKey_) String? value,
    @JsonKey(name: PostmanUrlEncodedParameter.disabledKey_) bool disabled,
    @JsonKey(name: PostmanUrlEncodedParameter.descriptionKey_)
    PostmanDescription? description,
  });
}

/// @nodoc
class _$PostmanUrlEncodedParameterCopyWithImpl<$Res>
    implements $PostmanUrlEncodedParameterCopyWith<$Res> {
  _$PostmanUrlEncodedParameterCopyWithImpl(this._self, this._then);

  final PostmanUrlEncodedParameter _self;
  final $Res Function(PostmanUrlEncodedParameter) _then;

  /// Create a copy of PostmanUrlEncodedParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = freezed,
    Object? disabled = null,
    Object? description = freezed,
  }) {
    return _then(
      PostmanUrlEncodedParameter(
        key: null == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        value: freezed == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String?,
        disabled: null == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as PostmanDescription?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanUrlEncodedParameter].
extension PostmanUrlEncodedParameterPatterns on PostmanUrlEncodedParameter {
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
    TResult Function(_PostmanUrlEncodedParameter value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanUrlEncodedParameter() when $default != null:
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
    TResult Function(_PostmanUrlEncodedParameter value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanUrlEncodedParameter():
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
    TResult? Function(_PostmanUrlEncodedParameter value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanUrlEncodedParameter() when $default != null:
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
      @JsonKey(name: PostmanUrlEncodedParameter.keyKey_) String key,
      @JsonKey(name: PostmanUrlEncodedParameter.valueKey_) String? value,
      @JsonKey(name: PostmanUrlEncodedParameter.disabledKey_) bool disabled,
      @JsonKey(name: PostmanUrlEncodedParameter.descriptionKey_)
      PostmanDescription? description,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanUrlEncodedParameter() when $default != null:
        return $default(
          _that.key,
          _that.value,
          _that.disabled,
          _that.description,
        );
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
      @JsonKey(name: PostmanUrlEncodedParameter.keyKey_) String key,
      @JsonKey(name: PostmanUrlEncodedParameter.valueKey_) String? value,
      @JsonKey(name: PostmanUrlEncodedParameter.disabledKey_) bool disabled,
      @JsonKey(name: PostmanUrlEncodedParameter.descriptionKey_)
      PostmanDescription? description,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanUrlEncodedParameter():
        return $default(
          _that.key,
          _that.value,
          _that.disabled,
          _that.description,
        );
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
      @JsonKey(name: PostmanUrlEncodedParameter.keyKey_) String key,
      @JsonKey(name: PostmanUrlEncodedParameter.valueKey_) String? value,
      @JsonKey(name: PostmanUrlEncodedParameter.disabledKey_) bool disabled,
      @JsonKey(name: PostmanUrlEncodedParameter.descriptionKey_)
      PostmanDescription? description,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanUrlEncodedParameter() when $default != null:
        return $default(
          _that.key,
          _that.value,
          _that.disabled,
          _that.description,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanUrlEncodedParameter extends PostmanUrlEncodedParameter {
  const _PostmanUrlEncodedParameter({
    @JsonKey(name: PostmanUrlEncodedParameter.keyKey_) required this.key,
    @JsonKey(name: PostmanUrlEncodedParameter.valueKey_) this.value,
    @JsonKey(name: PostmanUrlEncodedParameter.disabledKey_)
    this.disabled = false,
    @JsonKey(name: PostmanUrlEncodedParameter.descriptionKey_) this.description,
  }) : super._();
  factory _PostmanUrlEncodedParameter.fromJson(Map<String, dynamic> json) =>
      _$PostmanUrlEncodedParameterFromJson(json);

  /// key
  @override
  @JsonKey(name: PostmanUrlEncodedParameter.keyKey_)
  final String key;

  /// value
  @override
  @JsonKey(name: PostmanUrlEncodedParameter.valueKey_)
  final String? value;

  /// disabled
  @override
  @JsonKey(name: PostmanUrlEncodedParameter.disabledKey_)
  final bool disabled;

  /// description
  @override
  @JsonKey(name: PostmanUrlEncodedParameter.descriptionKey_)
  final PostmanDescription? description;

  /// Create a copy of PostmanUrlEncodedParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanUrlEncodedParameterCopyWith<_PostmanUrlEncodedParameter>
  get copyWith =>
      __$PostmanUrlEncodedParameterCopyWithImpl<_PostmanUrlEncodedParameter>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanUrlEncodedParameterToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanUrlEncodedParameter &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, key, value, disabled, description);
  }

  @override
  String toString() {
    return 'PostmanUrlEncodedParameter(key: $key, value: $value, disabled: $disabled, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$PostmanUrlEncodedParameterCopyWith<$Res>
    implements $PostmanUrlEncodedParameterCopyWith<$Res> {
  factory _$PostmanUrlEncodedParameterCopyWith(
    _PostmanUrlEncodedParameter value,
    $Res Function(_PostmanUrlEncodedParameter) _then,
  ) = __$PostmanUrlEncodedParameterCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanUrlEncodedParameter.keyKey_) String key,
    @JsonKey(name: PostmanUrlEncodedParameter.valueKey_) String? value,
    @JsonKey(name: PostmanUrlEncodedParameter.disabledKey_) bool disabled,
    @JsonKey(name: PostmanUrlEncodedParameter.descriptionKey_)
    PostmanDescription? description,
  });
}

/// @nodoc
class __$PostmanUrlEncodedParameterCopyWithImpl<$Res>
    implements _$PostmanUrlEncodedParameterCopyWith<$Res> {
  __$PostmanUrlEncodedParameterCopyWithImpl(this._self, this._then);

  final _PostmanUrlEncodedParameter _self;
  final $Res Function(_PostmanUrlEncodedParameter) _then;

  /// Create a copy of PostmanUrlEncodedParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = null,
    Object? value = freezed,
    Object? disabled = null,
    Object? description = freezed,
  }) {
    return _then(
      _PostmanUrlEncodedParameter(
        key: null == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        value: freezed == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String?,
        disabled: null == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as PostmanDescription?,
      ),
    );
  }
}
