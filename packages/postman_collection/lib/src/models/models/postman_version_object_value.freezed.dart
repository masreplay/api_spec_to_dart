// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_version_object_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanVersionObjectValue {
  /// major
  @JsonKey(name: PostmanVersionObjectValue.majorKey_)
  int get major;

  /// minor
  @JsonKey(name: PostmanVersionObjectValue.minorKey_)
  int get minor;

  /// patch
  @JsonKey(name: PostmanVersionObjectValue.patchKey_)
  int get patch;

  /// identifier
  @JsonKey(name: PostmanVersionObjectValue.identifierKey_)
  String? get identifier;

  /// meta
  @JsonKey(name: PostmanVersionObjectValue.metaKey_)
  dynamic get meta;

  /// Create a copy of PostmanVersionObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanVersionObjectValueCopyWith<PostmanVersionObjectValue> get copyWith =>
      _$PostmanVersionObjectValueCopyWithImpl<PostmanVersionObjectValue>(
        this as PostmanVersionObjectValue,
        _$identity,
      );

  /// Serializes this PostmanVersionObjectValue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanVersionObjectValue;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanVersionObjectValue &&
            (identical(other.major, _this.major) ||
                other.major == _this.major) &&
            (identical(other.minor, _this.minor) ||
                other.minor == _this.minor) &&
            (identical(other.patch, _this.patch) ||
                other.patch == _this.patch) &&
            (identical(other.identifier, _this.identifier) ||
                other.identifier == _this.identifier) &&
            const DeepCollectionEquality().equals(other.meta, _this.meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanVersionObjectValue;
    return Object.hash(
      runtimeType,
      _this.major,
      _this.minor,
      _this.patch,
      _this.identifier,
      const DeepCollectionEquality().hash(_this.meta),
    );
  }

  @override
  String toString() {
    final _this = this as PostmanVersionObjectValue;
    return 'PostmanVersionObjectValue(major: ${_this.major}, minor: ${_this.minor}, patch: ${_this.patch}, identifier: ${_this.identifier}, meta: ${_this.meta})';
  }
}

/// @nodoc
abstract mixin class $PostmanVersionObjectValueCopyWith<$Res> {
  factory $PostmanVersionObjectValueCopyWith(
    PostmanVersionObjectValue value,
    $Res Function(PostmanVersionObjectValue) _then,
  ) = _$PostmanVersionObjectValueCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanVersionObjectValue.majorKey_) int major,
    @JsonKey(name: PostmanVersionObjectValue.minorKey_) int minor,
    @JsonKey(name: PostmanVersionObjectValue.patchKey_) int patch,
    @JsonKey(name: PostmanVersionObjectValue.identifierKey_) String? identifier,
    @JsonKey(name: PostmanVersionObjectValue.metaKey_) dynamic meta,
  });
}

/// @nodoc
class _$PostmanVersionObjectValueCopyWithImpl<$Res>
    implements $PostmanVersionObjectValueCopyWith<$Res> {
  _$PostmanVersionObjectValueCopyWithImpl(this._self, this._then);

  final PostmanVersionObjectValue _self;
  final $Res Function(PostmanVersionObjectValue) _then;

  /// Create a copy of PostmanVersionObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? major = null,
    Object? minor = null,
    Object? patch = null,
    Object? identifier = freezed,
    Object? meta = freezed,
  }) {
    return _then(
      PostmanVersionObjectValue(
        major: null == major
            ? _self.major
            : major // ignore: cast_nullable_to_non_nullable
                  as int,
        minor: null == minor
            ? _self.minor
            : minor // ignore: cast_nullable_to_non_nullable
                  as int,
        patch: null == patch
            ? _self.patch
            : patch // ignore: cast_nullable_to_non_nullable
                  as int,
        identifier: freezed == identifier
            ? _self.identifier
            : identifier // ignore: cast_nullable_to_non_nullable
                  as String?,
        meta: freezed == meta
            ? _self.meta
            : meta // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanVersionObjectValue].
extension PostmanVersionObjectValuePatterns on PostmanVersionObjectValue {
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
    TResult Function(_PostmanVersionObjectValue value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanVersionObjectValue() when $default != null:
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
    TResult Function(_PostmanVersionObjectValue value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanVersionObjectValue():
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
    TResult? Function(_PostmanVersionObjectValue value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanVersionObjectValue() when $default != null:
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
      @JsonKey(name: PostmanVersionObjectValue.majorKey_) int major,
      @JsonKey(name: PostmanVersionObjectValue.minorKey_) int minor,
      @JsonKey(name: PostmanVersionObjectValue.patchKey_) int patch,
      @JsonKey(name: PostmanVersionObjectValue.identifierKey_)
      String? identifier,
      @JsonKey(name: PostmanVersionObjectValue.metaKey_) dynamic meta,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanVersionObjectValue() when $default != null:
        return $default(
          _that.major,
          _that.minor,
          _that.patch,
          _that.identifier,
          _that.meta,
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
      @JsonKey(name: PostmanVersionObjectValue.majorKey_) int major,
      @JsonKey(name: PostmanVersionObjectValue.minorKey_) int minor,
      @JsonKey(name: PostmanVersionObjectValue.patchKey_) int patch,
      @JsonKey(name: PostmanVersionObjectValue.identifierKey_)
      String? identifier,
      @JsonKey(name: PostmanVersionObjectValue.metaKey_) dynamic meta,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanVersionObjectValue():
        return $default(
          _that.major,
          _that.minor,
          _that.patch,
          _that.identifier,
          _that.meta,
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
      @JsonKey(name: PostmanVersionObjectValue.majorKey_) int major,
      @JsonKey(name: PostmanVersionObjectValue.minorKey_) int minor,
      @JsonKey(name: PostmanVersionObjectValue.patchKey_) int patch,
      @JsonKey(name: PostmanVersionObjectValue.identifierKey_)
      String? identifier,
      @JsonKey(name: PostmanVersionObjectValue.metaKey_) dynamic meta,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanVersionObjectValue() when $default != null:
        return $default(
          _that.major,
          _that.minor,
          _that.patch,
          _that.identifier,
          _that.meta,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanVersionObjectValue extends PostmanVersionObjectValue {
  const _PostmanVersionObjectValue({
    @JsonKey(name: PostmanVersionObjectValue.majorKey_) required this.major,
    @JsonKey(name: PostmanVersionObjectValue.minorKey_) required this.minor,
    @JsonKey(name: PostmanVersionObjectValue.patchKey_) required this.patch,
    @JsonKey(name: PostmanVersionObjectValue.identifierKey_) this.identifier,
    @JsonKey(name: PostmanVersionObjectValue.metaKey_) this.meta,
  }) : super._();
  factory _PostmanVersionObjectValue.fromJson(Map<String, dynamic> json) =>
      _$PostmanVersionObjectValueFromJson(json);

  /// major
  @override
  @JsonKey(name: PostmanVersionObjectValue.majorKey_)
  final int major;

  /// minor
  @override
  @JsonKey(name: PostmanVersionObjectValue.minorKey_)
  final int minor;

  /// patch
  @override
  @JsonKey(name: PostmanVersionObjectValue.patchKey_)
  final int patch;

  /// identifier
  @override
  @JsonKey(name: PostmanVersionObjectValue.identifierKey_)
  final String? identifier;

  /// meta
  @override
  @JsonKey(name: PostmanVersionObjectValue.metaKey_)
  final dynamic meta;

  /// Create a copy of PostmanVersionObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanVersionObjectValueCopyWith<_PostmanVersionObjectValue>
  get copyWith =>
      __$PostmanVersionObjectValueCopyWithImpl<_PostmanVersionObjectValue>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanVersionObjectValueToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanVersionObjectValue &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.minor, minor) || other.minor == minor) &&
            (identical(other.patch, patch) || other.patch == patch) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            const DeepCollectionEquality().equals(other.meta, meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      major,
      minor,
      patch,
      identifier,
      const DeepCollectionEquality().hash(meta),
    );
  }

  @override
  String toString() {
    return 'PostmanVersionObjectValue(major: $major, minor: $minor, patch: $patch, identifier: $identifier, meta: $meta)';
  }
}

/// @nodoc
abstract mixin class _$PostmanVersionObjectValueCopyWith<$Res>
    implements $PostmanVersionObjectValueCopyWith<$Res> {
  factory _$PostmanVersionObjectValueCopyWith(
    _PostmanVersionObjectValue value,
    $Res Function(_PostmanVersionObjectValue) _then,
  ) = __$PostmanVersionObjectValueCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanVersionObjectValue.majorKey_) int major,
    @JsonKey(name: PostmanVersionObjectValue.minorKey_) int minor,
    @JsonKey(name: PostmanVersionObjectValue.patchKey_) int patch,
    @JsonKey(name: PostmanVersionObjectValue.identifierKey_) String? identifier,
    @JsonKey(name: PostmanVersionObjectValue.metaKey_) dynamic meta,
  });
}

/// @nodoc
class __$PostmanVersionObjectValueCopyWithImpl<$Res>
    implements _$PostmanVersionObjectValueCopyWith<$Res> {
  __$PostmanVersionObjectValueCopyWithImpl(this._self, this._then);

  final _PostmanVersionObjectValue _self;
  final $Res Function(_PostmanVersionObjectValue) _then;

  /// Create a copy of PostmanVersionObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? major = null,
    Object? minor = null,
    Object? patch = null,
    Object? identifier = freezed,
    Object? meta = freezed,
  }) {
    return _then(
      _PostmanVersionObjectValue(
        major: null == major
            ? _self.major
            : major // ignore: cast_nullable_to_non_nullable
                  as int,
        minor: null == minor
            ? _self.minor
            : minor // ignore: cast_nullable_to_non_nullable
                  as int,
        patch: null == patch
            ? _self.patch
            : patch // ignore: cast_nullable_to_non_nullable
                  as int,
        identifier: freezed == identifier
            ? _self.identifier
            : identifier // ignore: cast_nullable_to_non_nullable
                  as String?,
        meta: freezed == meta
            ? _self.meta
            : meta // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}
