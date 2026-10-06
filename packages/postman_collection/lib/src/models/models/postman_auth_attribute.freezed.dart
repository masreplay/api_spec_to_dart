// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_auth_attribute.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanAuthAttribute {
  /// key
  @JsonKey(name: PostmanAuthAttribute.keyKey_)
  String get key;

  /// value
  @JsonKey(name: PostmanAuthAttribute.valueKey_)
  dynamic get value;

  /// type
  @JsonKey(name: PostmanAuthAttribute.typeKey_)
  String? get type;

  /// Create a copy of PostmanAuthAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanAuthAttributeCopyWith<PostmanAuthAttribute> get copyWith =>
      _$PostmanAuthAttributeCopyWithImpl<PostmanAuthAttribute>(
        this as PostmanAuthAttribute,
        _$identity,
      );

  /// Serializes this PostmanAuthAttribute to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanAuthAttribute;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanAuthAttribute &&
            (identical(other.key, _this.key) || other.key == _this.key) &&
            const DeepCollectionEquality().equals(other.value, _this.value) &&
            (identical(other.type, _this.type) || other.type == _this.type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanAuthAttribute;
    return Object.hash(
      runtimeType,
      _this.key,
      const DeepCollectionEquality().hash(_this.value),
      _this.type,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanAuthAttribute;
    return 'PostmanAuthAttribute(key: ${_this.key}, value: ${_this.value}, type: ${_this.type})';
  }
}

/// @nodoc
abstract mixin class $PostmanAuthAttributeCopyWith<$Res> {
  factory $PostmanAuthAttributeCopyWith(
    PostmanAuthAttribute value,
    $Res Function(PostmanAuthAttribute) _then,
  ) = _$PostmanAuthAttributeCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanAuthAttribute.keyKey_) String key,
    @JsonKey(name: PostmanAuthAttribute.valueKey_) dynamic value,
    @JsonKey(name: PostmanAuthAttribute.typeKey_) String? type,
  });
}

/// @nodoc
class _$PostmanAuthAttributeCopyWithImpl<$Res>
    implements $PostmanAuthAttributeCopyWith<$Res> {
  _$PostmanAuthAttributeCopyWithImpl(this._self, this._then);

  final PostmanAuthAttribute _self;
  final $Res Function(PostmanAuthAttribute) _then;

  /// Create a copy of PostmanAuthAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = freezed,
    Object? type = freezed,
  }) {
    return _then(
      PostmanAuthAttribute(
        key: null == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        value: freezed == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanAuthAttribute].
extension PostmanAuthAttributePatterns on PostmanAuthAttribute {
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
    TResult Function(_PostmanAuthAttribute value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanAuthAttribute() when $default != null:
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
    TResult Function(_PostmanAuthAttribute value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanAuthAttribute():
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
    TResult? Function(_PostmanAuthAttribute value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanAuthAttribute() when $default != null:
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
      @JsonKey(name: PostmanAuthAttribute.keyKey_) String key,
      @JsonKey(name: PostmanAuthAttribute.valueKey_) dynamic value,
      @JsonKey(name: PostmanAuthAttribute.typeKey_) String? type,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanAuthAttribute() when $default != null:
        return $default(_that.key, _that.value, _that.type);
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
      @JsonKey(name: PostmanAuthAttribute.keyKey_) String key,
      @JsonKey(name: PostmanAuthAttribute.valueKey_) dynamic value,
      @JsonKey(name: PostmanAuthAttribute.typeKey_) String? type,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanAuthAttribute():
        return $default(_that.key, _that.value, _that.type);
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
      @JsonKey(name: PostmanAuthAttribute.keyKey_) String key,
      @JsonKey(name: PostmanAuthAttribute.valueKey_) dynamic value,
      @JsonKey(name: PostmanAuthAttribute.typeKey_) String? type,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanAuthAttribute() when $default != null:
        return $default(_that.key, _that.value, _that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanAuthAttribute extends PostmanAuthAttribute {
  const _PostmanAuthAttribute({
    @JsonKey(name: PostmanAuthAttribute.keyKey_) required this.key,
    @JsonKey(name: PostmanAuthAttribute.valueKey_) this.value,
    @JsonKey(name: PostmanAuthAttribute.typeKey_) this.type,
  }) : super._();
  factory _PostmanAuthAttribute.fromJson(Map<String, dynamic> json) =>
      _$PostmanAuthAttributeFromJson(json);

  /// key
  @override
  @JsonKey(name: PostmanAuthAttribute.keyKey_)
  final String key;

  /// value
  @override
  @JsonKey(name: PostmanAuthAttribute.valueKey_)
  final dynamic value;

  /// type
  @override
  @JsonKey(name: PostmanAuthAttribute.typeKey_)
  final String? type;

  /// Create a copy of PostmanAuthAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanAuthAttributeCopyWith<_PostmanAuthAttribute> get copyWith =>
      __$PostmanAuthAttributeCopyWithImpl<_PostmanAuthAttribute>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanAuthAttributeToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanAuthAttribute &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      key,
      const DeepCollectionEquality().hash(value),
      type,
    );
  }

  @override
  String toString() {
    return 'PostmanAuthAttribute(key: $key, value: $value, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$PostmanAuthAttributeCopyWith<$Res>
    implements $PostmanAuthAttributeCopyWith<$Res> {
  factory _$PostmanAuthAttributeCopyWith(
    _PostmanAuthAttribute value,
    $Res Function(_PostmanAuthAttribute) _then,
  ) = __$PostmanAuthAttributeCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanAuthAttribute.keyKey_) String key,
    @JsonKey(name: PostmanAuthAttribute.valueKey_) dynamic value,
    @JsonKey(name: PostmanAuthAttribute.typeKey_) String? type,
  });
}

/// @nodoc
class __$PostmanAuthAttributeCopyWithImpl<$Res>
    implements _$PostmanAuthAttributeCopyWith<$Res> {
  __$PostmanAuthAttributeCopyWithImpl(this._self, this._then);

  final _PostmanAuthAttribute _self;
  final $Res Function(_PostmanAuthAttribute) _then;

  /// Create a copy of PostmanAuthAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = null,
    Object? value = freezed,
    Object? type = freezed,
  }) {
    return _then(
      _PostmanAuthAttribute(
        key: null == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        value: freezed == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
