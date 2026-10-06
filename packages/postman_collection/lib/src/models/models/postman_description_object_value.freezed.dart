// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_description_object_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanDescriptionObjectValue {
  /// content
  @JsonKey(name: PostmanDescriptionObjectValue.contentKey_)
  String? get content;

  /// type
  @JsonKey(name: PostmanDescriptionObjectValue.typeKey_)
  String? get type;

  /// version
  @JsonKey(name: PostmanDescriptionObjectValue.versionKey_)
  dynamic get version;

  /// Create a copy of PostmanDescriptionObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanDescriptionObjectValueCopyWith<PostmanDescriptionObjectValue>
  get copyWith =>
      _$PostmanDescriptionObjectValueCopyWithImpl<
        PostmanDescriptionObjectValue
      >(this as PostmanDescriptionObjectValue, _$identity);

  /// Serializes this PostmanDescriptionObjectValue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanDescriptionObjectValue;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanDescriptionObjectValue &&
            (identical(other.content, _this.content) ||
                other.content == _this.content) &&
            (identical(other.type, _this.type) || other.type == _this.type) &&
            const DeepCollectionEquality().equals(
              other.version,
              _this.version,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanDescriptionObjectValue;
    return Object.hash(
      runtimeType,
      _this.content,
      _this.type,
      const DeepCollectionEquality().hash(_this.version),
    );
  }

  @override
  String toString() {
    final _this = this as PostmanDescriptionObjectValue;
    return 'PostmanDescriptionObjectValue(content: ${_this.content}, type: ${_this.type}, version: ${_this.version})';
  }
}

/// @nodoc
abstract mixin class $PostmanDescriptionObjectValueCopyWith<$Res> {
  factory $PostmanDescriptionObjectValueCopyWith(
    PostmanDescriptionObjectValue value,
    $Res Function(PostmanDescriptionObjectValue) _then,
  ) = _$PostmanDescriptionObjectValueCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanDescriptionObjectValue.contentKey_) String? content,
    @JsonKey(name: PostmanDescriptionObjectValue.typeKey_) String? type,
    @JsonKey(name: PostmanDescriptionObjectValue.versionKey_) dynamic version,
  });
}

/// @nodoc
class _$PostmanDescriptionObjectValueCopyWithImpl<$Res>
    implements $PostmanDescriptionObjectValueCopyWith<$Res> {
  _$PostmanDescriptionObjectValueCopyWithImpl(this._self, this._then);

  final PostmanDescriptionObjectValue _self;
  final $Res Function(PostmanDescriptionObjectValue) _then;

  /// Create a copy of PostmanDescriptionObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? type = freezed,
    Object? version = freezed,
  }) {
    return _then(
      PostmanDescriptionObjectValue(
        content: freezed == content
            ? _self.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        version: freezed == version
            ? _self.version
            : version // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanDescriptionObjectValue].
extension PostmanDescriptionObjectValuePatterns
    on PostmanDescriptionObjectValue {
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
    TResult Function(_PostmanDescriptionObjectValue value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanDescriptionObjectValue() when $default != null:
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
    TResult Function(_PostmanDescriptionObjectValue value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanDescriptionObjectValue():
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
    TResult? Function(_PostmanDescriptionObjectValue value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanDescriptionObjectValue() when $default != null:
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
      @JsonKey(name: PostmanDescriptionObjectValue.contentKey_) String? content,
      @JsonKey(name: PostmanDescriptionObjectValue.typeKey_) String? type,
      @JsonKey(name: PostmanDescriptionObjectValue.versionKey_) dynamic version,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanDescriptionObjectValue() when $default != null:
        return $default(_that.content, _that.type, _that.version);
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
      @JsonKey(name: PostmanDescriptionObjectValue.contentKey_) String? content,
      @JsonKey(name: PostmanDescriptionObjectValue.typeKey_) String? type,
      @JsonKey(name: PostmanDescriptionObjectValue.versionKey_) dynamic version,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanDescriptionObjectValue():
        return $default(_that.content, _that.type, _that.version);
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
      @JsonKey(name: PostmanDescriptionObjectValue.contentKey_) String? content,
      @JsonKey(name: PostmanDescriptionObjectValue.typeKey_) String? type,
      @JsonKey(name: PostmanDescriptionObjectValue.versionKey_) dynamic version,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanDescriptionObjectValue() when $default != null:
        return $default(_that.content, _that.type, _that.version);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanDescriptionObjectValue extends PostmanDescriptionObjectValue {
  const _PostmanDescriptionObjectValue({
    @JsonKey(name: PostmanDescriptionObjectValue.contentKey_) this.content,
    @JsonKey(name: PostmanDescriptionObjectValue.typeKey_) this.type,
    @JsonKey(name: PostmanDescriptionObjectValue.versionKey_) this.version,
  }) : super._();
  factory _PostmanDescriptionObjectValue.fromJson(Map<String, dynamic> json) =>
      _$PostmanDescriptionObjectValueFromJson(json);

  /// content
  @override
  @JsonKey(name: PostmanDescriptionObjectValue.contentKey_)
  final String? content;

  /// type
  @override
  @JsonKey(name: PostmanDescriptionObjectValue.typeKey_)
  final String? type;

  /// version
  @override
  @JsonKey(name: PostmanDescriptionObjectValue.versionKey_)
  final dynamic version;

  /// Create a copy of PostmanDescriptionObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanDescriptionObjectValueCopyWith<_PostmanDescriptionObjectValue>
  get copyWith =>
      __$PostmanDescriptionObjectValueCopyWithImpl<
        _PostmanDescriptionObjectValue
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanDescriptionObjectValueToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanDescriptionObjectValue &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      content,
      type,
      const DeepCollectionEquality().hash(version),
    );
  }

  @override
  String toString() {
    return 'PostmanDescriptionObjectValue(content: $content, type: $type, version: $version)';
  }
}

/// @nodoc
abstract mixin class _$PostmanDescriptionObjectValueCopyWith<$Res>
    implements $PostmanDescriptionObjectValueCopyWith<$Res> {
  factory _$PostmanDescriptionObjectValueCopyWith(
    _PostmanDescriptionObjectValue value,
    $Res Function(_PostmanDescriptionObjectValue) _then,
  ) = __$PostmanDescriptionObjectValueCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanDescriptionObjectValue.contentKey_) String? content,
    @JsonKey(name: PostmanDescriptionObjectValue.typeKey_) String? type,
    @JsonKey(name: PostmanDescriptionObjectValue.versionKey_) dynamic version,
  });
}

/// @nodoc
class __$PostmanDescriptionObjectValueCopyWithImpl<$Res>
    implements _$PostmanDescriptionObjectValueCopyWith<$Res> {
  __$PostmanDescriptionObjectValueCopyWithImpl(this._self, this._then);

  final _PostmanDescriptionObjectValue _self;
  final $Res Function(_PostmanDescriptionObjectValue) _then;

  /// Create a copy of PostmanDescriptionObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = freezed,
    Object? type = freezed,
    Object? version = freezed,
  }) {
    return _then(
      _PostmanDescriptionObjectValue(
        content: freezed == content
            ? _self.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        version: freezed == version
            ? _self.version
            : version // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}
