// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_header.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanHeader {
  /// key
  @JsonKey(name: PostmanHeader.keyKey_)
  String get key;

  /// value
  @JsonKey(name: PostmanHeader.valueKey_)
  String get value;

  /// disabled
  @JsonKey(name: PostmanHeader.disabledKey_)
  bool get disabled;

  /// description
  @JsonKey(name: PostmanHeader.descriptionKey_)
  PostmanDescription? get description;

  /// Create a copy of PostmanHeader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanHeaderCopyWith<PostmanHeader> get copyWith =>
      _$PostmanHeaderCopyWithImpl<PostmanHeader>(
        this as PostmanHeader,
        _$identity,
      );

  /// Serializes this PostmanHeader to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanHeader;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanHeader &&
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
    final _this = this as PostmanHeader;
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
    final _this = this as PostmanHeader;
    return 'PostmanHeader(key: ${_this.key}, value: ${_this.value}, disabled: ${_this.disabled}, description: ${_this.description})';
  }
}

/// @nodoc
abstract mixin class $PostmanHeaderCopyWith<$Res> {
  factory $PostmanHeaderCopyWith(
    PostmanHeader value,
    $Res Function(PostmanHeader) _then,
  ) = _$PostmanHeaderCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanHeader.keyKey_) String key,
    @JsonKey(name: PostmanHeader.valueKey_) String value,
    @JsonKey(name: PostmanHeader.disabledKey_) bool disabled,
    @JsonKey(name: PostmanHeader.descriptionKey_)
    PostmanDescription? description,
  });
}

/// @nodoc
class _$PostmanHeaderCopyWithImpl<$Res>
    implements $PostmanHeaderCopyWith<$Res> {
  _$PostmanHeaderCopyWithImpl(this._self, this._then);

  final PostmanHeader _self;
  final $Res Function(PostmanHeader) _then;

  /// Create a copy of PostmanHeader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? disabled = null,
    Object? description = freezed,
  }) {
    return _then(
      PostmanHeader(
        key: null == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        value: null == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
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

/// Adds pattern-matching-related methods to [PostmanHeader].
extension PostmanHeaderPatterns on PostmanHeader {
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
    TResult Function(_PostmanHeader value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanHeader() when $default != null:
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
    TResult Function(_PostmanHeader value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanHeader():
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
    TResult? Function(_PostmanHeader value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanHeader() when $default != null:
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
      @JsonKey(name: PostmanHeader.keyKey_) String key,
      @JsonKey(name: PostmanHeader.valueKey_) String value,
      @JsonKey(name: PostmanHeader.disabledKey_) bool disabled,
      @JsonKey(name: PostmanHeader.descriptionKey_)
      PostmanDescription? description,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanHeader() when $default != null:
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
      @JsonKey(name: PostmanHeader.keyKey_) String key,
      @JsonKey(name: PostmanHeader.valueKey_) String value,
      @JsonKey(name: PostmanHeader.disabledKey_) bool disabled,
      @JsonKey(name: PostmanHeader.descriptionKey_)
      PostmanDescription? description,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanHeader():
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
      @JsonKey(name: PostmanHeader.keyKey_) String key,
      @JsonKey(name: PostmanHeader.valueKey_) String value,
      @JsonKey(name: PostmanHeader.disabledKey_) bool disabled,
      @JsonKey(name: PostmanHeader.descriptionKey_)
      PostmanDescription? description,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanHeader() when $default != null:
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
class _PostmanHeader extends PostmanHeader {
  const _PostmanHeader({
    @JsonKey(name: PostmanHeader.keyKey_) required this.key,
    @JsonKey(name: PostmanHeader.valueKey_) required this.value,
    @JsonKey(name: PostmanHeader.disabledKey_) this.disabled = false,
    @JsonKey(name: PostmanHeader.descriptionKey_) this.description,
  }) : super._();
  factory _PostmanHeader.fromJson(Map<String, dynamic> json) =>
      _$PostmanHeaderFromJson(json);

  /// key
  @override
  @JsonKey(name: PostmanHeader.keyKey_)
  final String key;

  /// value
  @override
  @JsonKey(name: PostmanHeader.valueKey_)
  final String value;

  /// disabled
  @override
  @JsonKey(name: PostmanHeader.disabledKey_)
  final bool disabled;

  /// description
  @override
  @JsonKey(name: PostmanHeader.descriptionKey_)
  final PostmanDescription? description;

  /// Create a copy of PostmanHeader
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanHeaderCopyWith<_PostmanHeader> get copyWith =>
      __$PostmanHeaderCopyWithImpl<_PostmanHeader>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanHeaderToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanHeader &&
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
    return 'PostmanHeader(key: $key, value: $value, disabled: $disabled, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$PostmanHeaderCopyWith<$Res>
    implements $PostmanHeaderCopyWith<$Res> {
  factory _$PostmanHeaderCopyWith(
    _PostmanHeader value,
    $Res Function(_PostmanHeader) _then,
  ) = __$PostmanHeaderCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanHeader.keyKey_) String key,
    @JsonKey(name: PostmanHeader.valueKey_) String value,
    @JsonKey(name: PostmanHeader.disabledKey_) bool disabled,
    @JsonKey(name: PostmanHeader.descriptionKey_)
    PostmanDescription? description,
  });
}

/// @nodoc
class __$PostmanHeaderCopyWithImpl<$Res>
    implements _$PostmanHeaderCopyWith<$Res> {
  __$PostmanHeaderCopyWithImpl(this._self, this._then);

  final _PostmanHeader _self;
  final $Res Function(_PostmanHeader) _then;

  /// Create a copy of PostmanHeader
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? disabled = null,
    Object? description = freezed,
  }) {
    return _then(
      _PostmanHeader(
        key: null == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        value: null == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
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
