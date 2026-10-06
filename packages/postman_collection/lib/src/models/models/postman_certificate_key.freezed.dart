// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_certificate_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanCertificateKey {
  /// src
  @JsonKey(name: PostmanCertificateKey.srcKey_)
  dynamic get src;

  /// Create a copy of PostmanCertificateKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCertificateKeyCopyWith<PostmanCertificateKey> get copyWith =>
      _$PostmanCertificateKeyCopyWithImpl<PostmanCertificateKey>(
        this as PostmanCertificateKey,
        _$identity,
      );

  /// Serializes this PostmanCertificateKey to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCertificateKey;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCertificateKey &&
            const DeepCollectionEquality().equals(other.src, _this.src));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCertificateKey;
    return Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_this.src),
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCertificateKey;
    return 'PostmanCertificateKey(src: ${_this.src})';
  }
}

/// @nodoc
abstract mixin class $PostmanCertificateKeyCopyWith<$Res> {
  factory $PostmanCertificateKeyCopyWith(
    PostmanCertificateKey value,
    $Res Function(PostmanCertificateKey) _then,
  ) = _$PostmanCertificateKeyCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: PostmanCertificateKey.srcKey_) dynamic src});
}

/// @nodoc
class _$PostmanCertificateKeyCopyWithImpl<$Res>
    implements $PostmanCertificateKeyCopyWith<$Res> {
  _$PostmanCertificateKeyCopyWithImpl(this._self, this._then);

  final PostmanCertificateKey _self;
  final $Res Function(PostmanCertificateKey) _then;

  /// Create a copy of PostmanCertificateKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? src = freezed}) {
    return _then(
      PostmanCertificateKey(
        src: freezed == src
            ? _self.src
            : src // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanCertificateKey].
extension PostmanCertificateKeyPatterns on PostmanCertificateKey {
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
    TResult Function(_PostmanCertificateKey value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCertificateKey() when $default != null:
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
    TResult Function(_PostmanCertificateKey value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCertificateKey():
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
    TResult? Function(_PostmanCertificateKey value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCertificateKey() when $default != null:
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
    TResult Function(@JsonKey(name: PostmanCertificateKey.srcKey_) dynamic src)?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCertificateKey() when $default != null:
        return $default(_that.src);
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
    TResult Function(@JsonKey(name: PostmanCertificateKey.srcKey_) dynamic src)
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCertificateKey():
        return $default(_that.src);
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
      @JsonKey(name: PostmanCertificateKey.srcKey_) dynamic src,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCertificateKey() when $default != null:
        return $default(_that.src);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanCertificateKey extends PostmanCertificateKey {
  const _PostmanCertificateKey({
    @JsonKey(name: PostmanCertificateKey.srcKey_) this.src,
  }) : super._();
  factory _PostmanCertificateKey.fromJson(Map<String, dynamic> json) =>
      _$PostmanCertificateKeyFromJson(json);

  /// src
  @override
  @JsonKey(name: PostmanCertificateKey.srcKey_)
  final dynamic src;

  /// Create a copy of PostmanCertificateKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCertificateKeyCopyWith<_PostmanCertificateKey> get copyWith =>
      __$PostmanCertificateKeyCopyWithImpl<_PostmanCertificateKey>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCertificateKeyToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCertificateKey &&
            const DeepCollectionEquality().equals(other.src, src));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, const DeepCollectionEquality().hash(src));
  }

  @override
  String toString() {
    return 'PostmanCertificateKey(src: $src)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCertificateKeyCopyWith<$Res>
    implements $PostmanCertificateKeyCopyWith<$Res> {
  factory _$PostmanCertificateKeyCopyWith(
    _PostmanCertificateKey value,
    $Res Function(_PostmanCertificateKey) _then,
  ) = __$PostmanCertificateKeyCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: PostmanCertificateKey.srcKey_) dynamic src});
}

/// @nodoc
class __$PostmanCertificateKeyCopyWithImpl<$Res>
    implements _$PostmanCertificateKeyCopyWith<$Res> {
  __$PostmanCertificateKeyCopyWithImpl(this._self, this._then);

  final _PostmanCertificateKey _self;
  final $Res Function(_PostmanCertificateKey) _then;

  /// Create a copy of PostmanCertificateKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? src = freezed}) {
    return _then(
      _PostmanCertificateKey(
        src: freezed == src
            ? _self.src
            : src // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}
