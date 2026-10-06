// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_certificate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanCertificate {
  /// name
  @JsonKey(name: PostmanCertificate.nameKey_)
  String? get name;

  /// matches
  @JsonKey(name: PostmanCertificate.matchesKey_)
  List<String>? get matches;

  /// key
  @JsonKey(name: PostmanCertificate.keyKey_)
  PostmanCertificateKey? get key;

  /// cert
  @JsonKey(name: PostmanCertificate.certKey_)
  PostmanCertificateCert? get cert;

  /// passphrase
  @JsonKey(name: PostmanCertificate.passphraseKey_)
  String? get passphrase;

  /// Create a copy of PostmanCertificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCertificateCopyWith<PostmanCertificate> get copyWith =>
      _$PostmanCertificateCopyWithImpl<PostmanCertificate>(
        this as PostmanCertificate,
        _$identity,
      );

  /// Serializes this PostmanCertificate to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCertificate;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCertificate &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            const DeepCollectionEquality().equals(
              other.matches,
              _this.matches,
            ) &&
            (identical(other.key, _this.key) || other.key == _this.key) &&
            (identical(other.cert, _this.cert) || other.cert == _this.cert) &&
            (identical(other.passphrase, _this.passphrase) ||
                other.passphrase == _this.passphrase));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCertificate;
    return Object.hash(
      runtimeType,
      _this.name,
      const DeepCollectionEquality().hash(_this.matches),
      _this.key,
      _this.cert,
      _this.passphrase,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCertificate;
    return 'PostmanCertificate(name: ${_this.name}, matches: ${_this.matches}, key: ${_this.key}, cert: ${_this.cert}, passphrase: ${_this.passphrase})';
  }
}

/// @nodoc
abstract mixin class $PostmanCertificateCopyWith<$Res> {
  factory $PostmanCertificateCopyWith(
    PostmanCertificate value,
    $Res Function(PostmanCertificate) _then,
  ) = _$PostmanCertificateCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanCertificate.nameKey_) String? name,
    @JsonKey(name: PostmanCertificate.matchesKey_) List<String>? matches,
    @JsonKey(name: PostmanCertificate.keyKey_) PostmanCertificateKey? key,
    @JsonKey(name: PostmanCertificate.certKey_) PostmanCertificateCert? cert,
    @JsonKey(name: PostmanCertificate.passphraseKey_) String? passphrase,
  });

  $PostmanCertificateKeyCopyWith<$Res>? get key;
  $PostmanCertificateCertCopyWith<$Res>? get cert;
}

/// @nodoc
class _$PostmanCertificateCopyWithImpl<$Res>
    implements $PostmanCertificateCopyWith<$Res> {
  _$PostmanCertificateCopyWithImpl(this._self, this._then);

  final PostmanCertificate _self;
  final $Res Function(PostmanCertificate) _then;

  /// Create a copy of PostmanCertificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? matches = freezed,
    Object? key = freezed,
    Object? cert = freezed,
    Object? passphrase = freezed,
  }) {
    return _then(
      PostmanCertificate(
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        matches: freezed == matches
            ? _self.matches
            : matches // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        key: freezed == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as PostmanCertificateKey?,
        cert: freezed == cert
            ? _self.cert
            : cert // ignore: cast_nullable_to_non_nullable
                  as PostmanCertificateCert?,
        passphrase: freezed == passphrase
            ? _self.passphrase
            : passphrase // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }

  /// Create a copy of PostmanCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCertificateKeyCopyWith<$Res>? get key {
    if (_self.key == null) {
      return null;
    }

    return $PostmanCertificateKeyCopyWith<$Res>(_self.key!, (value) {
      return _then(_self.copyWith(key: value));
    });
  }

  /// Create a copy of PostmanCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCertificateCertCopyWith<$Res>? get cert {
    if (_self.cert == null) {
      return null;
    }

    return $PostmanCertificateCertCopyWith<$Res>(_self.cert!, (value) {
      return _then(_self.copyWith(cert: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PostmanCertificate].
extension PostmanCertificatePatterns on PostmanCertificate {
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
    TResult Function(_PostmanCertificate value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCertificate() when $default != null:
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
    TResult Function(_PostmanCertificate value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCertificate():
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
    TResult? Function(_PostmanCertificate value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCertificate() when $default != null:
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
      @JsonKey(name: PostmanCertificate.nameKey_) String? name,
      @JsonKey(name: PostmanCertificate.matchesKey_) List<String>? matches,
      @JsonKey(name: PostmanCertificate.keyKey_) PostmanCertificateKey? key,
      @JsonKey(name: PostmanCertificate.certKey_) PostmanCertificateCert? cert,
      @JsonKey(name: PostmanCertificate.passphraseKey_) String? passphrase,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCertificate() when $default != null:
        return $default(
          _that.name,
          _that.matches,
          _that.key,
          _that.cert,
          _that.passphrase,
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
      @JsonKey(name: PostmanCertificate.nameKey_) String? name,
      @JsonKey(name: PostmanCertificate.matchesKey_) List<String>? matches,
      @JsonKey(name: PostmanCertificate.keyKey_) PostmanCertificateKey? key,
      @JsonKey(name: PostmanCertificate.certKey_) PostmanCertificateCert? cert,
      @JsonKey(name: PostmanCertificate.passphraseKey_) String? passphrase,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCertificate():
        return $default(
          _that.name,
          _that.matches,
          _that.key,
          _that.cert,
          _that.passphrase,
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
      @JsonKey(name: PostmanCertificate.nameKey_) String? name,
      @JsonKey(name: PostmanCertificate.matchesKey_) List<String>? matches,
      @JsonKey(name: PostmanCertificate.keyKey_) PostmanCertificateKey? key,
      @JsonKey(name: PostmanCertificate.certKey_) PostmanCertificateCert? cert,
      @JsonKey(name: PostmanCertificate.passphraseKey_) String? passphrase,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCertificate() when $default != null:
        return $default(
          _that.name,
          _that.matches,
          _that.key,
          _that.cert,
          _that.passphrase,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanCertificate extends PostmanCertificate {
  const _PostmanCertificate({
    @JsonKey(name: PostmanCertificate.nameKey_) this.name,
    @JsonKey(name: PostmanCertificate.matchesKey_) List<String>? matches,
    @JsonKey(name: PostmanCertificate.keyKey_) this.key,
    @JsonKey(name: PostmanCertificate.certKey_) this.cert,
    @JsonKey(name: PostmanCertificate.passphraseKey_) this.passphrase,
  }) : _matches = matches,
       super._();
  factory _PostmanCertificate.fromJson(Map<String, dynamic> json) =>
      _$PostmanCertificateFromJson(json);

  /// name
  @override
  @JsonKey(name: PostmanCertificate.nameKey_)
  final String? name;

  /// matches
  final List<String>? _matches;

  /// matches
  @override
  @JsonKey(name: PostmanCertificate.matchesKey_)
  List<String>? get matches {
    final value = _matches;
    if (value == null) return null;
    if (_matches is EqualUnmodifiableListView) return _matches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// key
  @override
  @JsonKey(name: PostmanCertificate.keyKey_)
  final PostmanCertificateKey? key;

  /// cert
  @override
  @JsonKey(name: PostmanCertificate.certKey_)
  final PostmanCertificateCert? cert;

  /// passphrase
  @override
  @JsonKey(name: PostmanCertificate.passphraseKey_)
  final String? passphrase;

  /// Create a copy of PostmanCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCertificateCopyWith<_PostmanCertificate> get copyWith =>
      __$PostmanCertificateCopyWithImpl<_PostmanCertificate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCertificateToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCertificate &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.matches, _matches) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.cert, cert) || other.cert == cert) &&
            (identical(other.passphrase, passphrase) ||
                other.passphrase == passphrase));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_matches),
      key,
      cert,
      passphrase,
    );
  }

  @override
  String toString() {
    return 'PostmanCertificate(name: $name, matches: $matches, key: $key, cert: $cert, passphrase: $passphrase)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCertificateCopyWith<$Res>
    implements $PostmanCertificateCopyWith<$Res> {
  factory _$PostmanCertificateCopyWith(
    _PostmanCertificate value,
    $Res Function(_PostmanCertificate) _then,
  ) = __$PostmanCertificateCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanCertificate.nameKey_) String? name,
    @JsonKey(name: PostmanCertificate.matchesKey_) List<String>? matches,
    @JsonKey(name: PostmanCertificate.keyKey_) PostmanCertificateKey? key,
    @JsonKey(name: PostmanCertificate.certKey_) PostmanCertificateCert? cert,
    @JsonKey(name: PostmanCertificate.passphraseKey_) String? passphrase,
  });

  @override
  $PostmanCertificateKeyCopyWith<$Res>? get key;
  @override
  $PostmanCertificateCertCopyWith<$Res>? get cert;
}

/// @nodoc
class __$PostmanCertificateCopyWithImpl<$Res>
    implements _$PostmanCertificateCopyWith<$Res> {
  __$PostmanCertificateCopyWithImpl(this._self, this._then);

  final _PostmanCertificate _self;
  final $Res Function(_PostmanCertificate) _then;

  /// Create a copy of PostmanCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? matches = freezed,
    Object? key = freezed,
    Object? cert = freezed,
    Object? passphrase = freezed,
  }) {
    return _then(
      _PostmanCertificate(
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        matches: freezed == matches
            ? _self._matches
            : matches // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        key: freezed == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as PostmanCertificateKey?,
        cert: freezed == cert
            ? _self.cert
            : cert // ignore: cast_nullable_to_non_nullable
                  as PostmanCertificateCert?,
        passphrase: freezed == passphrase
            ? _self.passphrase
            : passphrase // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }

  /// Create a copy of PostmanCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCertificateKeyCopyWith<$Res>? get key {
    if (_self.key == null) {
      return null;
    }

    return $PostmanCertificateKeyCopyWith<$Res>(_self.key!, (value) {
      return _then(_self.copyWith(key: value));
    });
  }

  /// Create a copy of PostmanCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCertificateCertCopyWith<$Res>? get cert {
    if (_self.cert == null) {
      return null;
    }

    return $PostmanCertificateCertCopyWith<$Res>(_self.cert!, (value) {
      return _then(_self.copyWith(cert: value));
    });
  }
}
