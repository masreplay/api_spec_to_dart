// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_form_parameter_file_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanFormParameterFileValue {
  /// key
  @JsonKey(name: PostmanFormParameterFileValue.keyKey_)
  String get key;

  /// src
  @JsonKey(name: PostmanFormParameterFileValue.srcKey_)
  PostmanFormParameterFileValueSrc? get src;

  /// disabled
  @JsonKey(name: PostmanFormParameterFileValue.disabledKey_)
  bool get disabled;

  /// type
  @JsonKey(name: PostmanFormParameterFileValue.typeKey_)
  String? get type;

  /// contentType
  @JsonKey(name: PostmanFormParameterFileValue.contentTypeKey_)
  String? get contentType;

  /// description
  @JsonKey(name: PostmanFormParameterFileValue.descriptionKey_)
  PostmanDescription? get description;

  /// Create a copy of PostmanFormParameterFileValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanFormParameterFileValueCopyWith<PostmanFormParameterFileValue>
  get copyWith =>
      _$PostmanFormParameterFileValueCopyWithImpl<
        PostmanFormParameterFileValue
      >(this as PostmanFormParameterFileValue, _$identity);

  /// Serializes this PostmanFormParameterFileValue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanFormParameterFileValue;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanFormParameterFileValue &&
            (identical(other.key, _this.key) || other.key == _this.key) &&
            (identical(other.src, _this.src) || other.src == _this.src) &&
            (identical(other.disabled, _this.disabled) ||
                other.disabled == _this.disabled) &&
            (identical(other.type, _this.type) || other.type == _this.type) &&
            (identical(other.contentType, _this.contentType) ||
                other.contentType == _this.contentType) &&
            (identical(other.description, _this.description) ||
                other.description == _this.description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanFormParameterFileValue;
    return Object.hash(
      runtimeType,
      _this.key,
      _this.src,
      _this.disabled,
      _this.type,
      _this.contentType,
      _this.description,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanFormParameterFileValue;
    return 'PostmanFormParameterFileValue(key: ${_this.key}, src: ${_this.src}, disabled: ${_this.disabled}, type: ${_this.type}, contentType: ${_this.contentType}, description: ${_this.description})';
  }
}

/// @nodoc
abstract mixin class $PostmanFormParameterFileValueCopyWith<$Res> {
  factory $PostmanFormParameterFileValueCopyWith(
    PostmanFormParameterFileValue value,
    $Res Function(PostmanFormParameterFileValue) _then,
  ) = _$PostmanFormParameterFileValueCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanFormParameterFileValue.keyKey_) String key,
    @JsonKey(name: PostmanFormParameterFileValue.srcKey_)
    PostmanFormParameterFileValueSrc? src,
    @JsonKey(name: PostmanFormParameterFileValue.disabledKey_) bool disabled,
    @JsonKey(name: PostmanFormParameterFileValue.typeKey_) String? type,
    @JsonKey(name: PostmanFormParameterFileValue.contentTypeKey_)
    String? contentType,
    @JsonKey(name: PostmanFormParameterFileValue.descriptionKey_)
    PostmanDescription? description,
  });
}

/// @nodoc
class _$PostmanFormParameterFileValueCopyWithImpl<$Res>
    implements $PostmanFormParameterFileValueCopyWith<$Res> {
  _$PostmanFormParameterFileValueCopyWithImpl(this._self, this._then);

  final PostmanFormParameterFileValue _self;
  final $Res Function(PostmanFormParameterFileValue) _then;

  /// Create a copy of PostmanFormParameterFileValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? src = freezed,
    Object? disabled = null,
    Object? type = freezed,
    Object? contentType = freezed,
    Object? description = freezed,
  }) {
    return _then(
      PostmanFormParameterFileValue(
        key: null == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        src: freezed == src
            ? _self.src
            : src // ignore: cast_nullable_to_non_nullable
                  as PostmanFormParameterFileValueSrc?,
        disabled: null == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        contentType: freezed == contentType
            ? _self.contentType
            : contentType // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as PostmanDescription?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanFormParameterFileValue].
extension PostmanFormParameterFileValuePatterns
    on PostmanFormParameterFileValue {
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
    TResult Function(_PostmanFormParameterFileValue value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanFormParameterFileValue() when $default != null:
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
    TResult Function(_PostmanFormParameterFileValue value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanFormParameterFileValue():
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
    TResult? Function(_PostmanFormParameterFileValue value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanFormParameterFileValue() when $default != null:
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
      @JsonKey(name: PostmanFormParameterFileValue.keyKey_) String key,
      @JsonKey(name: PostmanFormParameterFileValue.srcKey_)
      PostmanFormParameterFileValueSrc? src,
      @JsonKey(name: PostmanFormParameterFileValue.disabledKey_) bool disabled,
      @JsonKey(name: PostmanFormParameterFileValue.typeKey_) String? type,
      @JsonKey(name: PostmanFormParameterFileValue.contentTypeKey_)
      String? contentType,
      @JsonKey(name: PostmanFormParameterFileValue.descriptionKey_)
      PostmanDescription? description,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanFormParameterFileValue() when $default != null:
        return $default(
          _that.key,
          _that.src,
          _that.disabled,
          _that.type,
          _that.contentType,
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
      @JsonKey(name: PostmanFormParameterFileValue.keyKey_) String key,
      @JsonKey(name: PostmanFormParameterFileValue.srcKey_)
      PostmanFormParameterFileValueSrc? src,
      @JsonKey(name: PostmanFormParameterFileValue.disabledKey_) bool disabled,
      @JsonKey(name: PostmanFormParameterFileValue.typeKey_) String? type,
      @JsonKey(name: PostmanFormParameterFileValue.contentTypeKey_)
      String? contentType,
      @JsonKey(name: PostmanFormParameterFileValue.descriptionKey_)
      PostmanDescription? description,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanFormParameterFileValue():
        return $default(
          _that.key,
          _that.src,
          _that.disabled,
          _that.type,
          _that.contentType,
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
      @JsonKey(name: PostmanFormParameterFileValue.keyKey_) String key,
      @JsonKey(name: PostmanFormParameterFileValue.srcKey_)
      PostmanFormParameterFileValueSrc? src,
      @JsonKey(name: PostmanFormParameterFileValue.disabledKey_) bool disabled,
      @JsonKey(name: PostmanFormParameterFileValue.typeKey_) String? type,
      @JsonKey(name: PostmanFormParameterFileValue.contentTypeKey_)
      String? contentType,
      @JsonKey(name: PostmanFormParameterFileValue.descriptionKey_)
      PostmanDescription? description,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanFormParameterFileValue() when $default != null:
        return $default(
          _that.key,
          _that.src,
          _that.disabled,
          _that.type,
          _that.contentType,
          _that.description,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanFormParameterFileValue extends PostmanFormParameterFileValue {
  const _PostmanFormParameterFileValue({
    @JsonKey(name: PostmanFormParameterFileValue.keyKey_) required this.key,
    @JsonKey(name: PostmanFormParameterFileValue.srcKey_) this.src,
    @JsonKey(name: PostmanFormParameterFileValue.disabledKey_)
    this.disabled = false,
    @JsonKey(name: PostmanFormParameterFileValue.typeKey_) this.type,
    @JsonKey(name: PostmanFormParameterFileValue.contentTypeKey_)
    this.contentType,
    @JsonKey(name: PostmanFormParameterFileValue.descriptionKey_)
    this.description,
  }) : super._();
  factory _PostmanFormParameterFileValue.fromJson(Map<String, dynamic> json) =>
      _$PostmanFormParameterFileValueFromJson(json);

  /// key
  @override
  @JsonKey(name: PostmanFormParameterFileValue.keyKey_)
  final String key;

  /// src
  @override
  @JsonKey(name: PostmanFormParameterFileValue.srcKey_)
  final PostmanFormParameterFileValueSrc? src;

  /// disabled
  @override
  @JsonKey(name: PostmanFormParameterFileValue.disabledKey_)
  final bool disabled;

  /// type
  @override
  @JsonKey(name: PostmanFormParameterFileValue.typeKey_)
  final String? type;

  /// contentType
  @override
  @JsonKey(name: PostmanFormParameterFileValue.contentTypeKey_)
  final String? contentType;

  /// description
  @override
  @JsonKey(name: PostmanFormParameterFileValue.descriptionKey_)
  final PostmanDescription? description;

  /// Create a copy of PostmanFormParameterFileValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanFormParameterFileValueCopyWith<_PostmanFormParameterFileValue>
  get copyWith =>
      __$PostmanFormParameterFileValueCopyWithImpl<
        _PostmanFormParameterFileValue
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanFormParameterFileValueToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanFormParameterFileValue &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      key,
      src,
      disabled,
      type,
      contentType,
      description,
    );
  }

  @override
  String toString() {
    return 'PostmanFormParameterFileValue(key: $key, src: $src, disabled: $disabled, type: $type, contentType: $contentType, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$PostmanFormParameterFileValueCopyWith<$Res>
    implements $PostmanFormParameterFileValueCopyWith<$Res> {
  factory _$PostmanFormParameterFileValueCopyWith(
    _PostmanFormParameterFileValue value,
    $Res Function(_PostmanFormParameterFileValue) _then,
  ) = __$PostmanFormParameterFileValueCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanFormParameterFileValue.keyKey_) String key,
    @JsonKey(name: PostmanFormParameterFileValue.srcKey_)
    PostmanFormParameterFileValueSrc? src,
    @JsonKey(name: PostmanFormParameterFileValue.disabledKey_) bool disabled,
    @JsonKey(name: PostmanFormParameterFileValue.typeKey_) String? type,
    @JsonKey(name: PostmanFormParameterFileValue.contentTypeKey_)
    String? contentType,
    @JsonKey(name: PostmanFormParameterFileValue.descriptionKey_)
    PostmanDescription? description,
  });
}

/// @nodoc
class __$PostmanFormParameterFileValueCopyWithImpl<$Res>
    implements _$PostmanFormParameterFileValueCopyWith<$Res> {
  __$PostmanFormParameterFileValueCopyWithImpl(this._self, this._then);

  final _PostmanFormParameterFileValue _self;
  final $Res Function(_PostmanFormParameterFileValue) _then;

  /// Create a copy of PostmanFormParameterFileValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = null,
    Object? src = freezed,
    Object? disabled = null,
    Object? type = freezed,
    Object? contentType = freezed,
    Object? description = freezed,
  }) {
    return _then(
      _PostmanFormParameterFileValue(
        key: null == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        src: freezed == src
            ? _self.src
            : src // ignore: cast_nullable_to_non_nullable
                  as PostmanFormParameterFileValueSrc?,
        disabled: null == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        contentType: freezed == contentType
            ? _self.contentType
            : contentType // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as PostmanDescription?,
      ),
    );
  }
}
