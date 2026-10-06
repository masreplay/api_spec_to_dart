// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_form_parameter_text_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanFormParameterTextValue {
  /// key
  @JsonKey(name: PostmanFormParameterTextValue.keyKey_)
  String get key;

  /// value
  @JsonKey(name: PostmanFormParameterTextValue.valueKey_)
  String? get value;

  /// disabled
  @JsonKey(name: PostmanFormParameterTextValue.disabledKey_)
  bool get disabled;

  /// type
  @JsonKey(name: PostmanFormParameterTextValue.typeKey_)
  String? get type;

  /// contentType
  @JsonKey(name: PostmanFormParameterTextValue.contentTypeKey_)
  String? get contentType;

  /// description
  @JsonKey(name: PostmanFormParameterTextValue.descriptionKey_)
  PostmanDescription? get description;

  /// Create a copy of PostmanFormParameterTextValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanFormParameterTextValueCopyWith<PostmanFormParameterTextValue>
  get copyWith =>
      _$PostmanFormParameterTextValueCopyWithImpl<
        PostmanFormParameterTextValue
      >(this as PostmanFormParameterTextValue, _$identity);

  /// Serializes this PostmanFormParameterTextValue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanFormParameterTextValue;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanFormParameterTextValue &&
            (identical(other.key, _this.key) || other.key == _this.key) &&
            (identical(other.value, _this.value) ||
                other.value == _this.value) &&
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
    final _this = this as PostmanFormParameterTextValue;
    return Object.hash(
      runtimeType,
      _this.key,
      _this.value,
      _this.disabled,
      _this.type,
      _this.contentType,
      _this.description,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanFormParameterTextValue;
    return 'PostmanFormParameterTextValue(key: ${_this.key}, value: ${_this.value}, disabled: ${_this.disabled}, type: ${_this.type}, contentType: ${_this.contentType}, description: ${_this.description})';
  }
}

/// @nodoc
abstract mixin class $PostmanFormParameterTextValueCopyWith<$Res> {
  factory $PostmanFormParameterTextValueCopyWith(
    PostmanFormParameterTextValue value,
    $Res Function(PostmanFormParameterTextValue) _then,
  ) = _$PostmanFormParameterTextValueCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanFormParameterTextValue.keyKey_) String key,
    @JsonKey(name: PostmanFormParameterTextValue.valueKey_) String? value,
    @JsonKey(name: PostmanFormParameterTextValue.disabledKey_) bool disabled,
    @JsonKey(name: PostmanFormParameterTextValue.typeKey_) String? type,
    @JsonKey(name: PostmanFormParameterTextValue.contentTypeKey_)
    String? contentType,
    @JsonKey(name: PostmanFormParameterTextValue.descriptionKey_)
    PostmanDescription? description,
  });
}

/// @nodoc
class _$PostmanFormParameterTextValueCopyWithImpl<$Res>
    implements $PostmanFormParameterTextValueCopyWith<$Res> {
  _$PostmanFormParameterTextValueCopyWithImpl(this._self, this._then);

  final PostmanFormParameterTextValue _self;
  final $Res Function(PostmanFormParameterTextValue) _then;

  /// Create a copy of PostmanFormParameterTextValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = freezed,
    Object? disabled = null,
    Object? type = freezed,
    Object? contentType = freezed,
    Object? description = freezed,
  }) {
    return _then(
      PostmanFormParameterTextValue(
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

/// Adds pattern-matching-related methods to [PostmanFormParameterTextValue].
extension PostmanFormParameterTextValuePatterns
    on PostmanFormParameterTextValue {
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
    TResult Function(_PostmanFormParameterTextValue value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanFormParameterTextValue() when $default != null:
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
    TResult Function(_PostmanFormParameterTextValue value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanFormParameterTextValue():
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
    TResult? Function(_PostmanFormParameterTextValue value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanFormParameterTextValue() when $default != null:
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
      @JsonKey(name: PostmanFormParameterTextValue.keyKey_) String key,
      @JsonKey(name: PostmanFormParameterTextValue.valueKey_) String? value,
      @JsonKey(name: PostmanFormParameterTextValue.disabledKey_) bool disabled,
      @JsonKey(name: PostmanFormParameterTextValue.typeKey_) String? type,
      @JsonKey(name: PostmanFormParameterTextValue.contentTypeKey_)
      String? contentType,
      @JsonKey(name: PostmanFormParameterTextValue.descriptionKey_)
      PostmanDescription? description,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanFormParameterTextValue() when $default != null:
        return $default(
          _that.key,
          _that.value,
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
      @JsonKey(name: PostmanFormParameterTextValue.keyKey_) String key,
      @JsonKey(name: PostmanFormParameterTextValue.valueKey_) String? value,
      @JsonKey(name: PostmanFormParameterTextValue.disabledKey_) bool disabled,
      @JsonKey(name: PostmanFormParameterTextValue.typeKey_) String? type,
      @JsonKey(name: PostmanFormParameterTextValue.contentTypeKey_)
      String? contentType,
      @JsonKey(name: PostmanFormParameterTextValue.descriptionKey_)
      PostmanDescription? description,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanFormParameterTextValue():
        return $default(
          _that.key,
          _that.value,
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
      @JsonKey(name: PostmanFormParameterTextValue.keyKey_) String key,
      @JsonKey(name: PostmanFormParameterTextValue.valueKey_) String? value,
      @JsonKey(name: PostmanFormParameterTextValue.disabledKey_) bool disabled,
      @JsonKey(name: PostmanFormParameterTextValue.typeKey_) String? type,
      @JsonKey(name: PostmanFormParameterTextValue.contentTypeKey_)
      String? contentType,
      @JsonKey(name: PostmanFormParameterTextValue.descriptionKey_)
      PostmanDescription? description,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanFormParameterTextValue() when $default != null:
        return $default(
          _that.key,
          _that.value,
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
class _PostmanFormParameterTextValue extends PostmanFormParameterTextValue {
  const _PostmanFormParameterTextValue({
    @JsonKey(name: PostmanFormParameterTextValue.keyKey_) required this.key,
    @JsonKey(name: PostmanFormParameterTextValue.valueKey_) this.value,
    @JsonKey(name: PostmanFormParameterTextValue.disabledKey_)
    this.disabled = false,
    @JsonKey(name: PostmanFormParameterTextValue.typeKey_) this.type,
    @JsonKey(name: PostmanFormParameterTextValue.contentTypeKey_)
    this.contentType,
    @JsonKey(name: PostmanFormParameterTextValue.descriptionKey_)
    this.description,
  }) : super._();
  factory _PostmanFormParameterTextValue.fromJson(Map<String, dynamic> json) =>
      _$PostmanFormParameterTextValueFromJson(json);

  /// key
  @override
  @JsonKey(name: PostmanFormParameterTextValue.keyKey_)
  final String key;

  /// value
  @override
  @JsonKey(name: PostmanFormParameterTextValue.valueKey_)
  final String? value;

  /// disabled
  @override
  @JsonKey(name: PostmanFormParameterTextValue.disabledKey_)
  final bool disabled;

  /// type
  @override
  @JsonKey(name: PostmanFormParameterTextValue.typeKey_)
  final String? type;

  /// contentType
  @override
  @JsonKey(name: PostmanFormParameterTextValue.contentTypeKey_)
  final String? contentType;

  /// description
  @override
  @JsonKey(name: PostmanFormParameterTextValue.descriptionKey_)
  final PostmanDescription? description;

  /// Create a copy of PostmanFormParameterTextValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanFormParameterTextValueCopyWith<_PostmanFormParameterTextValue>
  get copyWith =>
      __$PostmanFormParameterTextValueCopyWithImpl<
        _PostmanFormParameterTextValue
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanFormParameterTextValueToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanFormParameterTextValue &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
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
      value,
      disabled,
      type,
      contentType,
      description,
    );
  }

  @override
  String toString() {
    return 'PostmanFormParameterTextValue(key: $key, value: $value, disabled: $disabled, type: $type, contentType: $contentType, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$PostmanFormParameterTextValueCopyWith<$Res>
    implements $PostmanFormParameterTextValueCopyWith<$Res> {
  factory _$PostmanFormParameterTextValueCopyWith(
    _PostmanFormParameterTextValue value,
    $Res Function(_PostmanFormParameterTextValue) _then,
  ) = __$PostmanFormParameterTextValueCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanFormParameterTextValue.keyKey_) String key,
    @JsonKey(name: PostmanFormParameterTextValue.valueKey_) String? value,
    @JsonKey(name: PostmanFormParameterTextValue.disabledKey_) bool disabled,
    @JsonKey(name: PostmanFormParameterTextValue.typeKey_) String? type,
    @JsonKey(name: PostmanFormParameterTextValue.contentTypeKey_)
    String? contentType,
    @JsonKey(name: PostmanFormParameterTextValue.descriptionKey_)
    PostmanDescription? description,
  });
}

/// @nodoc
class __$PostmanFormParameterTextValueCopyWithImpl<$Res>
    implements _$PostmanFormParameterTextValueCopyWith<$Res> {
  __$PostmanFormParameterTextValueCopyWithImpl(this._self, this._then);

  final _PostmanFormParameterTextValue _self;
  final $Res Function(_PostmanFormParameterTextValue) _then;

  /// Create a copy of PostmanFormParameterTextValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = null,
    Object? value = freezed,
    Object? disabled = null,
    Object? type = freezed,
    Object? contentType = freezed,
    Object? description = freezed,
  }) {
    return _then(
      _PostmanFormParameterTextValue(
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
