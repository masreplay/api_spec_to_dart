// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_certificate_cert.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanCertificateCert {
  /// src
  @JsonKey(name: PostmanCertificateCert.srcKey_)
  dynamic get src;

  /// Create a copy of PostmanCertificateCert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCertificateCertCopyWith<PostmanCertificateCert> get copyWith =>
      _$PostmanCertificateCertCopyWithImpl<PostmanCertificateCert>(
        this as PostmanCertificateCert,
        _$identity,
      );

  /// Serializes this PostmanCertificateCert to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCertificateCert;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCertificateCert &&
            const DeepCollectionEquality().equals(other.src, _this.src));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCertificateCert;
    return Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_this.src),
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCertificateCert;
    return 'PostmanCertificateCert(src: ${_this.src})';
  }
}

/// @nodoc
abstract mixin class $PostmanCertificateCertCopyWith<$Res> {
  factory $PostmanCertificateCertCopyWith(
    PostmanCertificateCert value,
    $Res Function(PostmanCertificateCert) _then,
  ) = _$PostmanCertificateCertCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: PostmanCertificateCert.srcKey_) dynamic src});
}

/// @nodoc
class _$PostmanCertificateCertCopyWithImpl<$Res>
    implements $PostmanCertificateCertCopyWith<$Res> {
  _$PostmanCertificateCertCopyWithImpl(this._self, this._then);

  final PostmanCertificateCert _self;
  final $Res Function(PostmanCertificateCert) _then;

  /// Create a copy of PostmanCertificateCert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? src = freezed}) {
    return _then(
      PostmanCertificateCert(
        src: freezed == src
            ? _self.src
            : src // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanCertificateCert].
extension PostmanCertificateCertPatterns on PostmanCertificateCert {
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
    TResult Function(_PostmanCertificateCert value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCertificateCert() when $default != null:
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
    TResult Function(_PostmanCertificateCert value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCertificateCert():
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
    TResult? Function(_PostmanCertificateCert value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCertificateCert() when $default != null:
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
      @JsonKey(name: PostmanCertificateCert.srcKey_) dynamic src,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCertificateCert() when $default != null:
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
    TResult Function(@JsonKey(name: PostmanCertificateCert.srcKey_) dynamic src)
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCertificateCert():
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
      @JsonKey(name: PostmanCertificateCert.srcKey_) dynamic src,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCertificateCert() when $default != null:
        return $default(_that.src);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanCertificateCert extends PostmanCertificateCert {
  const _PostmanCertificateCert({
    @JsonKey(name: PostmanCertificateCert.srcKey_) this.src,
  }) : super._();
  factory _PostmanCertificateCert.fromJson(Map<String, dynamic> json) =>
      _$PostmanCertificateCertFromJson(json);

  /// src
  @override
  @JsonKey(name: PostmanCertificateCert.srcKey_)
  final dynamic src;

  /// Create a copy of PostmanCertificateCert
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCertificateCertCopyWith<_PostmanCertificateCert> get copyWith =>
      __$PostmanCertificateCertCopyWithImpl<_PostmanCertificateCert>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCertificateCertToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCertificateCert &&
            const DeepCollectionEquality().equals(other.src, src));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, const DeepCollectionEquality().hash(src));
  }

  @override
  String toString() {
    return 'PostmanCertificateCert(src: $src)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCertificateCertCopyWith<$Res>
    implements $PostmanCertificateCertCopyWith<$Res> {
  factory _$PostmanCertificateCertCopyWith(
    _PostmanCertificateCert value,
    $Res Function(_PostmanCertificateCert) _then,
  ) = __$PostmanCertificateCertCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: PostmanCertificateCert.srcKey_) dynamic src});
}

/// @nodoc
class __$PostmanCertificateCertCopyWithImpl<$Res>
    implements _$PostmanCertificateCertCopyWith<$Res> {
  __$PostmanCertificateCertCopyWithImpl(this._self, this._then);

  final _PostmanCertificateCert _self;
  final $Res Function(_PostmanCertificateCert) _then;

  /// Create a copy of PostmanCertificateCert
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? src = freezed}) {
    return _then(
      _PostmanCertificateCert(
        src: freezed == src
            ? _self.src
            : src // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}
